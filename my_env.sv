class my_env extends uvm_driver;
        `uvm_component_utils(my_env)

        my_agent ag;
        function new(string name="my_env",uvm_component parent);
                super.new(name,parent);
        endfunction

        function void build_phase(uvm_phase phase);
                super.build_phase(phase);
                `uvm_info("ENV","build phase",UVM_LOW);
                ag=my_agent::type_id::create("ag",this);
        endfunction

        function void connect_phase(uvm_phase phase);
                super.connect_phase(phase);
                `uvm_info("ENV","connect phase",UVM_LOW);
        endfunction

        function void end_of_elaboration_phase(uvm_phase phase);
                super.end_of_elaboration_phase(phase);
                `uvm_info("ENV","end of elaboration phase",UVM_LOW);
        endfunction

        function void start_of_simulation_phase(uvm_phase phase);
                super.start_of_simulation_phase(phase);
                `uvm_info("ENV","start of simulation phase",UVM_LOW);
        endfunction

        task run_phase(uvm_phase phase);
                super.run_phase(phase);
                `uvm_info("ENV","run_phase",UVM_LOW);
        endtask

        function void extract_phase(uvm_phase phase);
                super.extract_phase(phase);
                `uvm_info("ENV","extract phase",UVM_LOW);
        endfunction

        function void check_phase(uvm_phase phase);
                super.check_phase(phase);
                `uvm_info("ENV","check_phase",UVM_LOW);
        endfunction

        function void report_phase(uvm_phase phase);
                super.report_phase(phase);
                `uvm_info("ENV","report phase",UVM_LOW);
        endfunction

        function void final_phase(uvm_phase phase);
                super.final_phase(phase);
                `uvm_info("ENV","final phase",UVM_LOW);
        endfunction
endclass
