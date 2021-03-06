/* Generated by Yosys 0.9 (git sha1 1979e0b1, i686-w64-mingw32.static-g++ 5.5.0 -Os) */

(* dynports =  1  *)
(* top =  1  *)
(* src = "state_machine_estructural.v:1" *)
module state_machine_estructural(clk, reset, data_in, error_estructural, next_error_estructural, state_estructural, next_state_estructural);
  (* src = "state_machine_estructural.v:26" *)
  wire _000_;
  (* src = "state_machine_estructural.v:26" *)
  wire [4:0] _001_;
  (* src = "state_machine_estructural.v:26" *)
  wire [4:0] _002_;
  wire _003_;
  wire _004_;
  wire _005_;
  wire _006_;
  wire _007_;
  wire _008_;
  wire _009_;
  wire _010_;
  wire _011_;
  wire _012_;
  wire _013_;
  wire _014_;
  wire _015_;
  wire _016_;
  wire _017_;
  wire _018_;
  wire _019_;
  wire _020_;
  wire _021_;
  wire _022_;
  wire _023_;
  wire _024_;
  wire _025_;
  wire _026_;
  wire _027_;
  wire _028_;
  wire _029_;
  wire _030_;
  wire _031_;
  wire _032_;
  wire _033_;
  wire _034_;
  wire _035_;
  wire _036_;
  wire _037_;
  wire _038_;
  wire _039_;
  wire _040_;
  wire _041_;
  wire _042_;
  wire _043_;
  wire _044_;
  wire _045_;
  wire _046_;
  wire _047_;
  wire _048_;
  wire _049_;
  wire _050_;
  wire _051_;
  wire _052_;
  wire _053_;
  wire _054_;
  wire _055_;
  wire _056_;
  wire _057_;
  wire _058_;
  wire _059_;
  wire _060_;
  wire _061_;
  wire _062_;
  wire _063_;
  wire _064_;
  wire _065_;
  wire _066_;
  wire _067_;
  wire _068_;
  wire _069_;
  wire _070_;
  wire _071_;
  wire _072_;
  wire _073_;
  wire _074_;
  wire _075_;
  wire _076_;
  wire _077_;
  wire _078_;
  wire _079_;
  wire _080_;
  wire _081_;
  wire _082_;
  wire _083_;
  wire _084_;
  wire _085_;
  wire _086_;
  wire _087_;
  wire _088_;
  wire _089_;
  wire _090_;
  wire _091_;
  wire _092_;
  wire _093_;
  wire _094_;
  wire _095_;
  wire _096_;
  wire _097_;
  wire _098_;
  wire _099_;
  wire _100_;
  wire _101_;
  wire _102_;
  wire _103_;
  wire _104_;
  (* src = "state_machine_estructural.v:8" *)
  input clk;
  (* src = "state_machine_estructural.v:10" *)
  input [15:0] data_in;
  (* src = "state_machine_estructural.v:11" *)
  output error_estructural;
  (* src = "state_machine_estructural.v:11" *)
  output next_error_estructural;
  (* src = "state_machine_estructural.v:12" *)
  output [4:0] next_state_estructural;
  (* src = "state_machine_estructural.v:9" *)
  input reset;
  (* src = "state_machine_estructural.v:17" *)
  wire [4:0] seq_counter;
  (* src = "state_machine_estructural.v:12" *)
  output [4:0] state_estructural;
  NOT _105_ (
    .A(state_estructural[2]),
    .Y(_045_)
  );
  NOT _106_ (
    .A(state_estructural[0]),
    .Y(_046_)
  );
  NOT _107_ (
    .A(state_estructural[1]),
    .Y(_047_)
  );
  NOT _108_ (
    .A(state_estructural[3]),
    .Y(_048_)
  );
  NOT _109_ (
    .A(seq_counter[0]),
    .Y(_049_)
  );
  NOT _110_ (
    .A(seq_counter[1]),
    .Y(_050_)
  );
  NOT _111_ (
    .A(seq_counter[2]),
    .Y(_051_)
  );
  NOT _112_ (
    .A(seq_counter[3]),
    .Y(_052_)
  );
  NOT _113_ (
    .A(reset),
    .Y(_053_)
  );
  NOT _114_ (
    .A(data_in[1]),
    .Y(_054_)
  );
  NOT _115_ (
    .A(data_in[3]),
    .Y(_055_)
  );
  NOR _116_ (
    .A(state_estructural[4]),
    .B(state_estructural[1]),
    .Y(_056_)
  );
  NAND _117_ (
    .A(_046_),
    .B(_056_),
    .Y(_057_)
  );
  NAND _118_ (
    .A(_045_),
    .B(state_estructural[3]),
    .Y(_058_)
  );
  NOR _119_ (
    .A(_057_),
    .B(_058_),
    .Y(_059_)
  );
  NAND _120_ (
    .A(_046_),
    .B(state_estructural[1]),
    .Y(_060_)
  );
  NOR _121_ (
    .A(_045_),
    .B(state_estructural[3]),
    .Y(_061_)
  );
  NAND _122_ (
    .A(state_estructural[2]),
    .B(_048_),
    .Y(_062_)
  );
  NAND _123_ (
    .A(state_estructural[4]),
    .B(_061_),
    .Y(_063_)
  );
  NOR _124_ (
    .A(_060_),
    .B(_063_),
    .Y(_064_)
  );
  NOR _125_ (
    .A(_059_),
    .B(_064_),
    .Y(_065_)
  );
  NOT _126_ (
    .A(_065_),
    .Y(_066_)
  );
  NOR _127_ (
    .A(state_estructural[2]),
    .B(state_estructural[3]),
    .Y(_067_)
  );
  NOT _128_ (
    .A(_067_),
    .Y(_068_)
  );
  NOR _129_ (
    .A(state_estructural[4]),
    .B(_060_),
    .Y(_069_)
  );
  NAND _130_ (
    .A(_067_),
    .B(_069_),
    .Y(_070_)
  );
  NAND _131_ (
    .A(state_estructural[0]),
    .B(_056_),
    .Y(_071_)
  );
  NOR _132_ (
    .A(_068_),
    .B(_071_),
    .Y(_072_)
  );
  NOR _133_ (
    .A(_057_),
    .B(_062_),
    .Y(_073_)
  );
  NOT _134_ (
    .A(_073_),
    .Y(_074_)
  );
  NOR _135_ (
    .A(_072_),
    .B(_073_),
    .Y(_075_)
  );
  NAND _136_ (
    .A(_070_),
    .B(_074_),
    .Y(_076_)
  );
  NOR _137_ (
    .A(_072_),
    .B(_076_),
    .Y(_077_)
  );
  NAND _138_ (
    .A(_070_),
    .B(_075_),
    .Y(_078_)
  );
  NOR _139_ (
    .A(_066_),
    .B(_078_),
    .Y(_079_)
  );
  NAND _140_ (
    .A(_065_),
    .B(_077_),
    .Y(_080_)
  );
  NAND _141_ (
    .A(state_estructural[0]),
    .B(_079_),
    .Y(_081_)
  );
  NOT _142_ (
    .A(_081_),
    .Y(next_state_estructural[0])
  );
  NAND _143_ (
    .A(reset),
    .B(_081_),
    .Y(_002_[0])
  );
  NAND _144_ (
    .A(_049_),
    .B(data_in[0]),
    .Y(_082_)
  );
  NOR _145_ (
    .A(_049_),
    .B(data_in[0]),
    .Y(_083_)
  );
  NOR _146_ (
    .A(seq_counter[1]),
    .B(_054_),
    .Y(_084_)
  );
  NOR _147_ (
    .A(_083_),
    .B(_084_),
    .Y(_085_)
  );
  NAND _148_ (
    .A(_082_),
    .B(_085_),
    .Y(_086_)
  );
  NOR _149_ (
    .A(_051_),
    .B(data_in[2]),
    .Y(_087_)
  );
  NOR _150_ (
    .A(seq_counter[4]),
    .B(_087_),
    .Y(_088_)
  );
  NAND _151_ (
    .A(_052_),
    .B(data_in[3]),
    .Y(_089_)
  );
  NAND _152_ (
    .A(seq_counter[1]),
    .B(_054_),
    .Y(_090_)
  );
  NAND _153_ (
    .A(_089_),
    .B(_090_),
    .Y(_091_)
  );
  NAND _154_ (
    .A(_051_),
    .B(data_in[2]),
    .Y(_092_)
  );
  NAND _155_ (
    .A(seq_counter[3]),
    .B(_055_),
    .Y(_093_)
  );
  NAND _156_ (
    .A(_092_),
    .B(_093_),
    .Y(_094_)
  );
  NOR _157_ (
    .A(_091_),
    .B(_094_),
    .Y(_095_)
  );
  NAND _158_ (
    .A(_088_),
    .B(_095_),
    .Y(_096_)
  );
  NOR _159_ (
    .A(_086_),
    .B(_096_),
    .Y(_097_)
  );
  NOT _160_ (
    .A(_097_),
    .Y(_098_)
  );
  NAND _161_ (
    .A(data_in[12]),
    .B(data_in[13]),
    .Y(_099_)
  );
  NOT _162_ (
    .A(_099_),
    .Y(_100_)
  );
  NAND _163_ (
    .A(data_in[14]),
    .B(data_in[15]),
    .Y(_101_)
  );
  NOT _164_ (
    .A(_101_),
    .Y(_102_)
  );
  NOR _165_ (
    .A(_099_),
    .B(_101_),
    .Y(_103_)
  );
  NAND _166_ (
    .A(_100_),
    .B(_102_),
    .Y(_104_)
  );
  NOR _167_ (
    .A(_097_),
    .B(_104_),
    .Y(_003_)
  );
  NAND _168_ (
    .A(_076_),
    .B(_103_),
    .Y(_004_)
  );
  NOT _169_ (
    .A(_004_),
    .Y(_005_)
  );
  NAND _170_ (
    .A(_098_),
    .B(_005_),
    .Y(_006_)
  );
  NOR _171_ (
    .A(_047_),
    .B(_076_),
    .Y(_007_)
  );
  NAND _172_ (
    .A(_072_),
    .B(_103_),
    .Y(_008_)
  );
  NAND _173_ (
    .A(_065_),
    .B(_008_),
    .Y(_009_)
  );
  NOR _174_ (
    .A(_007_),
    .B(_009_),
    .Y(_010_)
  );
  NAND _175_ (
    .A(_006_),
    .B(_010_),
    .Y(next_state_estructural[1])
  );
  NAND _176_ (
    .A(reset),
    .B(next_state_estructural[1]),
    .Y(_011_)
  );
  NOT _177_ (
    .A(_011_),
    .Y(_002_[1])
  );
  NAND _178_ (
    .A(state_estructural[2]),
    .B(_079_),
    .Y(_012_)
  );
  NOR _179_ (
    .A(_097_),
    .B(_008_),
    .Y(_013_)
  );
  NAND _180_ (
    .A(_004_),
    .B(_012_),
    .Y(_014_)
  );
  NOR _181_ (
    .A(_013_),
    .B(_014_),
    .Y(_015_)
  );
  NOT _182_ (
    .A(_015_),
    .Y(next_state_estructural[2])
  );
  NOR _183_ (
    .A(_053_),
    .B(_015_),
    .Y(_002_[2])
  );
  NAND _184_ (
    .A(state_estructural[3]),
    .B(_079_),
    .Y(_016_)
  );
  NOR _185_ (
    .A(_077_),
    .B(_103_),
    .Y(_017_)
  );
  NOT _186_ (
    .A(_017_),
    .Y(_018_)
  );
  NAND _187_ (
    .A(_016_),
    .B(_018_),
    .Y(next_state_estructural[3])
  );
  NAND _188_ (
    .A(reset),
    .B(next_state_estructural[3]),
    .Y(_019_)
  );
  NOT _189_ (
    .A(_019_),
    .Y(_002_[3])
  );
  NAND _190_ (
    .A(state_estructural[4]),
    .B(_079_),
    .Y(_020_)
  );
  NAND _191_ (
    .A(_078_),
    .B(_003_),
    .Y(_021_)
  );
  NAND _192_ (
    .A(_020_),
    .B(_021_),
    .Y(next_state_estructural[4])
  );
  NAND _193_ (
    .A(reset),
    .B(next_state_estructural[4]),
    .Y(_022_)
  );
  NOT _194_ (
    .A(_022_),
    .Y(_002_[4])
  );
  NOR _195_ (
    .A(_049_),
    .B(_098_),
    .Y(_023_)
  );
  NAND _196_ (
    .A(seq_counter[0]),
    .B(_097_),
    .Y(_024_)
  );
  NOR _197_ (
    .A(seq_counter[0]),
    .B(_097_),
    .Y(_025_)
  );
  NOT _198_ (
    .A(_025_),
    .Y(_026_)
  );
  NAND _199_ (
    .A(reset),
    .B(_026_),
    .Y(_027_)
  );
  NOR _200_ (
    .A(_023_),
    .B(_027_),
    .Y(_001_[0])
  );
  NOR _201_ (
    .A(_050_),
    .B(_024_),
    .Y(_028_)
  );
  NAND _202_ (
    .A(_050_),
    .B(_024_),
    .Y(_029_)
  );
  NAND _203_ (
    .A(reset),
    .B(_029_),
    .Y(_030_)
  );
  NOR _204_ (
    .A(_028_),
    .B(_030_),
    .Y(_001_[1])
  );
  NAND _205_ (
    .A(seq_counter[2]),
    .B(_028_),
    .Y(_031_)
  );
  NOT _206_ (
    .A(_031_),
    .Y(_032_)
  );
  NOR _207_ (
    .A(seq_counter[2]),
    .B(_028_),
    .Y(_033_)
  );
  NOT _208_ (
    .A(_033_),
    .Y(_034_)
  );
  NAND _209_ (
    .A(reset),
    .B(_034_),
    .Y(_035_)
  );
  NOR _210_ (
    .A(_032_),
    .B(_035_),
    .Y(_001_[2])
  );
  NOR _211_ (
    .A(_052_),
    .B(_031_),
    .Y(_036_)
  );
  NAND _212_ (
    .A(_052_),
    .B(_031_),
    .Y(_037_)
  );
  NAND _213_ (
    .A(reset),
    .B(_037_),
    .Y(_038_)
  );
  NOR _214_ (
    .A(_036_),
    .B(_038_),
    .Y(_001_[3])
  );
  NOR _215_ (
    .A(seq_counter[4]),
    .B(_036_),
    .Y(_039_)
  );
  NOR _216_ (
    .A(_053_),
    .B(_039_),
    .Y(_001_[4])
  );
  NAND _217_ (
    .A(_075_),
    .B(_080_),
    .Y(_040_)
  );
  NAND _218_ (
    .A(error_estructural),
    .B(_040_),
    .Y(_041_)
  );
  NOR _219_ (
    .A(_077_),
    .B(_097_),
    .Y(_042_)
  );
  NOR _220_ (
    .A(_017_),
    .B(_042_),
    .Y(_043_)
  );
  NAND _221_ (
    .A(_041_),
    .B(_043_),
    .Y(next_error_estructural)
  );
  NAND _222_ (
    .A(reset),
    .B(next_error_estructural),
    .Y(_044_)
  );
  NOT _223_ (
    .A(_044_),
    .Y(_000_)
  );
  (* src = "state_machine_estructural.v:26" *)
  DFF _224_ (
    .C(clk),
    .D(_002_[0]),
    .Q(state_estructural[0])
  );
  (* src = "state_machine_estructural.v:26" *)
  DFF _225_ (
    .C(clk),
    .D(_002_[1]),
    .Q(state_estructural[1])
  );
  (* src = "state_machine_estructural.v:26" *)
  DFF _226_ (
    .C(clk),
    .D(_002_[2]),
    .Q(state_estructural[2])
  );
  (* src = "state_machine_estructural.v:26" *)
  DFF _227_ (
    .C(clk),
    .D(_002_[3]),
    .Q(state_estructural[3])
  );
  (* src = "state_machine_estructural.v:26" *)
  DFF _228_ (
    .C(clk),
    .D(_002_[4]),
    .Q(state_estructural[4])
  );
  (* src = "state_machine_estructural.v:26" *)
  DFF _229_ (
    .C(clk),
    .D(_000_),
    .Q(error_estructural)
  );
  (* src = "state_machine_estructural.v:26" *)
  DFF _230_ (
    .C(clk),
    .D(_001_[0]),
    .Q(seq_counter[0])
  );
  (* src = "state_machine_estructural.v:26" *)
  DFF _231_ (
    .C(clk),
    .D(_001_[1]),
    .Q(seq_counter[1])
  );
  (* src = "state_machine_estructural.v:26" *)
  DFF _232_ (
    .C(clk),
    .D(_001_[2]),
    .Q(seq_counter[2])
  );
  (* src = "state_machine_estructural.v:26" *)
  DFF _233_ (
    .C(clk),
    .D(_001_[3]),
    .Q(seq_counter[3])
  );
  (* src = "state_machine_estructural.v:26" *)
  DFF _234_ (
    .C(clk),
    .D(_001_[4]),
    .Q(seq_counter[4])
  );
endmodule
