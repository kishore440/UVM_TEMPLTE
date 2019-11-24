class my_sequence extends uvm_sequence#(my_seq_item);
        `uvm_object_utils(my_sequence)
        function new(string name="my_sequence");
                super.new(name);
        endfunction

        task body();
                `uvm_info("SEQUENCE","body",UVM_LOW);
                req=my_seq_item::type_id::create("req");
                wait_for_grant();
                $display("item is requested");
                assert(req.randomize());
                req.print();
                send_request(req);
                wait_for_item_done();
        endtask
endclass
