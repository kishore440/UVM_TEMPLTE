class my_driver extends uvm_driver#(my_seq_item);
        `uvm_component_utils(my_driver)

        function new(string name="my_driver",uvm_component parent);
                super.new(name,parent);
        endfunction

        function void build_phase(uvm_phase phase);
                super.build_phase(phase);
                `uvm_info("DRV","build phase",UVM_LOW);
        endfunction

        function void connect_phase(uvm_phase phase);
                super.connect_phase(phase);
                `uvm_info("DRV","connect phase",UVM_LOW);
        endfunction

        function void end_of_elaboration_phase(uvm_phase phase);
                super.end_of_elaboration_phase(phase);
                `uvm_info("DRV","end of elaboration phase",UVM_LOW);
                $display(get_type_name);
                $display(get_object_type);
                $display(get_type);
        endfunction

        function void start_of_simulation_phase(uvm_phase phase);
                super.start_of_simulation_phase(phase);
                `uvm_info("DRV","start of simulation phase",UVM_LOW);
        endfunction

        task run_phase(uvm_phase phase);
                super.run_phase(phase);
                `uvm_info("DRV","run_phase",UVM_LOW);
                seq_item_port.get_next_item(req);
                $display("item recived");
                req.print();
                seq_item_port.item_done();
        endtask

        function void extract_phase(uvm_phase phase);
                super.extract_phase(phase);
                `uvm_info("DRV","extract phase",UVM_LOW);
        endfunction

        function void check_phase(uvm_phase phase);
                super.check_phase(phase);
                `uvm_info("DRV","check_phase",UVM_LOW);
        endfunction

        function void report_phase(uvm_phase phase);
                super.report_phase(phase);
                `uvm_info("DRV","report phase",UVM_LOW);
        endfunction

        function void final_phase(uvm_phase phase);
                super.final_phase(phase);
                `uvm_info("DRV","final phase",UVM_LOW);
        endfunction
endclass
