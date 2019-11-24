class my_agent extends uvm_agent;
        `uvm_component_utils(my_agent)
        my_sequencer sqr;
        my_driver drv;
        function new(string name="my_agent",uvm_component parent);
                super.new(name,parent);
        endfunction

        function void build_phase(uvm_phase phase);
                super.build_phase(phase);
                `uvm_info("AGENT","build phase",UVM_LOW);
                if(get_is_active()==UVM_ACTIVE)
                begin
                        sqr=my_sequencer::type_id::create("sqr",this);
                        drv=my_driver::type_id::create("drv",this);
                end
        endfunction

        function void connect_phase(uvm_phase phase);
                super.connect_phase(phase);
                `uvm_info("AGENT","connect phase",UVM_LOW);
                drv.seq_item_port.connect(sqr.seq_item_export);
        endfunction

        function void end_of_elaboration_phase(uvm_phase phase);
                super.end_of_elaboration_phase(phase);
                `uvm_info("AGENT","end of elaboration phase",UVM_LOW);
        endfunction

        function void start_of_simulation_phase(uvm_phase phase);
                super.start_of_simulation_phase(phase);
                `uvm_info("AGENT","start of simulation phase",UVM_LOW);
        endfunction

        task run_phase(uvm_phase phase);
                super.run_phase(phase);
                `uvm_info("AGENT","run_phase",UVM_LOW);
        endtask

        function void extract_phase(uvm_phase phase);
                super.extract_phase(phase);
                `uvm_info("AGENT","extract phase",UVM_LOW);
        endfunction

        function void check_phase(uvm_phase phase);
                super.check_phase(phase);
                `uvm_info("AGENT","check_phase",UVM_LOW);
        endfunction

        function void report_phase(uvm_phase phase);
                super.report_phase(phase);
                `uvm_info("AGENT","report phase",UVM_LOW);
        endfunction

        function void final_phase(uvm_phase phase);
                super.final_phase(phase);
                `uvm_info("AGENT","final phase",UVM_LOW);
        endfunction
endclass
