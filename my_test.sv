class my_test extends uvm_test;
        `uvm_component_utils(my_test)
        my_env env;
        my_sequence seq_item;
        function new(string name="my_test",uvm_component parent);
                super.new(name,parent);
        endfunction

        function void build_phase(uvm_phase phase);
                super.build_phase(phase);
                env=my_env::type_id::create("env",this);
                seq_item=my_sequence::type_id::create("seq_item",this);
        endfunction

        function void connect_phase(uvm_phase phase);
                super.connect_phase(phase);
                `uvm_info("TEST","connect phase",UVM_LOW);
        endfunction

        function void end_of_elaboration_phase(uvm_phase phase);
                super.end_of_elaboration_phase(phase);
                `uvm_info("TEST","end of elaboration phase",UVM_LOW);
        endfunction

        function void start_of_simulation_phase(uvm_phase phase);
                super.start_of_simulation_phase(phase);
                `uvm_info("TEST","start of simulation phase",UVM_LOW);
        endfunction

        task run_phase(uvm_phase phase);
                super.run_phase(phase);
                `uvm_info("TEST","run_phase",UVM_LOW);
                phase.raise_objection(this);
                seq_item.start(env.ag.sqr);
                phase.drop_objection(this);
        endtask

        function void extract_phase(uvm_phase phase);
                super.extract_phase(phase);
                `uvm_info("TEST","extract phase",UVM_LOW);
        endfunction

        function void check_phase(uvm_phase phase);
                super.check_phase(phase);
                `uvm_info("TEST","check_phase",UVM_LOW);
        endfunction

        function void report_phase(uvm_phase phase);
                super.report_phase(phase);
                `uvm_info("TEST","report phase",UVM_LOW);
        endfunction

        function void final_phase(uvm_phase phase);
                super.final_phase(phase);
                `uvm_info("TEST","final phase",UVM_LOW);
        endfunction
endclass
