class my_seq_item extends uvm_sequence_item;
        rand int a;
        rand int b;
        constraint c1{a inside{[0:100]};}
        constraint c2{b inside{[200:300]};}
        `uvm_object_utils_begin(my_seq_item)
          `uvm_field_int(a,UVM_DEFAULT);
          `uvm_field_int(b,UVM_DEFAULT);
        `uvm_object_utils_end

        function new(string name="my_seq_item");
                super.new(name);
        endfunction
endclass
