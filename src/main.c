#include <stdio.h>
#include <windows.h>
#include <string.h>
#include <stdint.h>

#pragma region variaveis nao iniciadas
uint16_t word_559010;
uint16_t word_559012;
uint16_t word_559014;
uint32_t dword_559018;
uint16_t word_55901C;
uint32_t dword_559020;
uint16_t word_559024;
uint32_t dword_559028;
uint32_t dword_55902C;
uint32_t dword_559030;
uint16_t word_559034;
uint32_t dword_559038;
uint16_t word_55903C;
uint32_t dword_559040;
uint32_t dword_559044;
uint32_t dword_559048;
uint16_t word_55904C;
uint32_t dword_559050;
uint16_t word_559054;
uint32_t dword_559058;
uint32_t dword_55905C;
uint32_t dword_559060;
uint16_t word_559064;
uint32_t dword_559068;
uint16_t word_55906C;
uint32_t dword_559070;
uint32_t dword_559074;
uint32_t dword_559078;
uint16_t word_55907C;
uint32_t dword_559080;
uint16_t word_559084;
uint32_t dword_559088;
uint32_t dword_55908C;
uint32_t dword_559090;
uint16_t word_559094;
uint32_t dword_559098;
uint16_t word_55909C;
uint32_t dword_5590A0;
uint32_t dword_5590A4;
uint32_t dword_5590A8;
uint16_t word_5590AC;
uint32_t dword_5590B0;
uint16_t word_5590B4;
uint32_t dword_5590B8;
uint32_t dword_5590BC;
uint32_t dword_5590C0;
uint16_t word_5590C4;
uint32_t dword_5590C8;
uint16_t word_5590CC;
uint32_t dword_5590D0;
uint32_t dword_5590D4;
uint32_t dword_5590D8;
uint16_t word_5590DC;
uint32_t dword_5590E0;
uint16_t word_5590E4;
uint32_t dword_5590E8;
uint32_t dword_5590EC;
uint32_t dword_5590F0;
uint16_t word_5590F4;
uint32_t dword_5590F8;
uint16_t word_5590FC;
uint32_t dword_559100;
uint32_t dword_559104;
uint32_t dword_559108;
uint16_t word_55910C;
uint32_t dword_559110;
uint16_t word_559114;
uint32_t dword_559118;
uint32_t dword_55911C;
uint16_t word_559120;
uint32_t dword_559124;
uint32_t dword_559128;
uint32_t dword_55912C;
uint32_t dword_559130;
uint32_t dword_559134;
uint16_t word_559138;
uint32_t dword_55913C;
uint16_t word_559140;
uint32_t dword_559144;
uint32_t dword_559148;
uint32_t dword_55914C;
uint16_t word_559150;
uint32_t dword_559154;
uint16_t word_559158;
uint32_t dword_55915C;
uint32_t dword_559160;
uint16_t word_559164;
uint32_t dword_559168;
uint16_t word_55916C;
uint32_t dword_559170;
uint16_t word_559174;
uint32_t dword_559178;
uint32_t dword_55917C;
uint32_t dword_559180;
uint16_t word_559184;
uint32_t dword_559188;
uint16_t word_55918C;
uint32_t dword_559190;
uint32_t dword_559194;
uint32_t dword_559198;
uint32_t dword_55919C;
uint8_t padding_dword_55919C[56];
uint8_t unk_5591D8[64];
uint16_t word_559218;
uint16_t word_55921A;
uint16_t word_55921C;
uint8_t padding_word_55921C[58];
uint32_t dword_559258;
uint32_t dword_55925C;
uint32_t dword_559260;
uint32_t dword_559264;
uint32_t dword_559268;
uint32_t dword_55926C;
uint8_t padding_dword_55926C[28];
uint32_t dword_55928C;
uint8_t padding_dword_55928C[60];
uint32_t dword_5592CC;
uint32_t dword_5592D0;
uint32_t dword_5592D4;
uint8_t padding_dword_5592D4[4];
uint32_t dword_5592DC;
uint32_t dword_5592E0;
uint32_t dword_5592E4;
uint8_t unk_5592E8[244];
uint32_t dword_5593DC;
uint32_t dword_5593E0;
uint32_t dword_5593E4;
uint32_t dword_5593E8;
uint32_t dword_5593EC;
uint32_t dword_5593F0;
uint16_t word_5593F4;
uint16_t word_5593F6;
uint16_t word_5593F8;
uint32_t dword_5593FC;
uint32_t dword_559400;
uint32_t dword_559404;
uint8_t padding_dword_559404[4];
uint8_t unk_55940C[18];
uint32_t dword_55941E;
uint32_t dword_559422;
uint32_t dword_559428;
uint32_t dword_55942C;
uint32_t dword_559430;
uint16_t word_559438;
uint16_t word_55943A;
uint16_t word_55943C;
uint32_t dword_559440;
uint32_t dword_559444;
uint32_t dword_559448;
uint16_t word_559450;
uint16_t word_559452;
uint16_t word_559454;
uint16_t word_559460;
uint16_t word_559462;
uint16_t word_559464;
uint8_t padding_word_559464[30];
uint32_t dword_559484;
uint8_t padding_dword_559484[12];
uint32_t dword_559494;
uint8_t padding_dword_559494[1044];
uint8_t unk_5598AC[24];
uint8_t unk_5598C4[8];
uint8_t unk_5598CC[8];
uint8_t unk_5598D4[8];
uint8_t unk_5598DC[8];
uint8_t unk_5598E4[8];
uint8_t unk_5598EC[6];
uint32_t dword_5598F2;
uint8_t unk_5598F6[2];
uint16_t word_5598F8[2];
uint8_t unk_5598FE[2];
uint16_t word_559900[5];
uint32_t dword_559914;
uint32_t dword_559918;
uint32_t dword_55991C;
uint32_t dword_559920;
uint8_t unk_559930[4];
uint8_t unk_559934[4];
uint8_t unk_559938[4];
uint8_t unk_55993C[4];
uint8_t unk_559940[4];
uint32_t dword_559944;
uint32_t dword_559948;
uint32_t dword_55994C;
uint8_t byte_559950;
uint8_t byte_559951;
uint8_t byte_559952;
uint8_t byte_559953;
uint8_t byte_559954;
uint8_t byte_559955;
uint8_t byte_559956;
uint8_t byte_559957;
uint8_t byte_559958;
uint8_t byte_559959;
uint32_t dword_55995C;
uint32_t dword_559960;
uint32_t dword_559964;
uint32_t dword_559968;
uint32_t dword_55996C;
uint32_t dword_559970;
uint32_t dword_559974;
uint32_t dword_559978;
uint32_t dword_55997C;
uint8_t byte_559980[14];
uint8_t byte_55998E;
uint8_t byte_55998F[5];
uint16_t word_559994;
uint16_t word_559996;
uint8_t padding_word_559996[26];
uint8_t byte_5599B2;
uint16_t word_5599B8;
uint16_t word_5599BA;
uint8_t padding_word_5599BA[26];
uint8_t byte_5599D6[6];
uint16_t word_5599DC;
uint16_t word_5599DE;
uint8_t padding_word_5599DE[26];
uint8_t byte_5599FA;
uint16_t word_559A00;
uint16_t word_559A02;
uint32_t dword_559A10;
uint32_t dword_559A14;
uint32_t dword_559A18;
uint32_t dword_559A1C;
uint32_t dword_559A20;
uint32_t dword_559A24;
uint32_t dword_559A28;
uint32_t dword_559A2C;
uint8_t unk_559A30[4];
uint32_t dword_559A34;
uint32_t dword_559A38;
uint32_t dword_559A3C;
uint32_t dword_559A40;
uint32_t dword_559A44;
uint32_t dword_559A48;
uint8_t byte_559A4C;
uint8_t byte_559A4D[39];
uint8_t byte_559A74;
uint8_t byte_559A75[19];
uint32_t dword_559A88;
uint8_t padding_dword_559A88[32];
uint32_t dword_559AAC;
uint32_t dword_559AB0;
uint32_t dword_559AB4;
uint32_t dword_559AB8;
uint32_t dword_559ABC;
uint32_t dword_559AC0;
uint32_t dword_559AC4;
uint32_t dword_559AC8;
uint32_t dword_559ACC;
uint32_t dword_559AD0;
uint32_t dword_559AD4;
uint32_t dword_559AD8;
uint32_t dword_559ADC;
uint32_t dword_559AE0;
uint32_t dword_559AE4;
uint32_t dword_559AE8;
uint32_t dword_559AEC;
uint8_t padding_dword_559AEC[14];
uint32_t dword_559AFE;
uint32_t dword_559B02;
uint8_t padding_dword_559B02[762];
uint8_t unk_559E00[8];
uint8_t unk_559E08[8];
uint8_t unk_559E10[16];
uint8_t byte_559E20;
uint8_t byte_559E21;
uint8_t unk_559E28[14];
uint8_t unk_559E36[2];
uint16_t word_559E38;
uint32_t dword_559E3C;
uint32_t dword_559E40;
uint32_t dword_559E44;
uint8_t padding_dword_559E44[4];
uint32_t dword_559E4C;
uint32_t dword_559E50;
uint32_t dword_559E54;
uint32_t dword_559E58;
uint32_t dword_559E5C;
uint8_t unk_559E60[8];
uint8_t unk_559E68[16];
uint32_t dword_559E78;
uint32_t dword_559E7C;
uint32_t dword_559E80;
uint16_t word_559E88;
uint16_t word_559E8A;
uint16_t word_559E8C;
uint8_t unk_559E90[16];
uint32_t dword_559EA0;
uint32_t dword_559EA4;
uint32_t dword_559EA8;
uint32_t dword_559EB0;
uint32_t dword_559EB4;
uint32_t dword_559EB8;
uint8_t padding_dword_559EB8[2];
uint8_t unk_559EBE[2];
uint16_t word_559EC0;
uint8_t unk_559EC2[2];
uint16_t word_559EC4;
uint32_t dword_559EC8;
uint32_t dword_559ECC;
uint32_t dword_559ED0;
uint8_t byte_559ED8;
uint8_t byte_559ED9;
uint8_t unk_559EDC[48];
uint8_t unk_559F0C[48];
uint8_t unk_559F3C[48];
uint8_t unk_559F6C[48];
uint8_t unk_559F9C[48];
uint8_t unk_559FCC[8];
uint8_t unk_559FD4[16];
uint32_t dword_559FE4;
uint32_t dword_559FE8;
uint32_t dword_559FEC;
uint32_t dword_559FF0;
uint32_t dword_559FF4;
uint32_t dword_559FF8;
uint32_t dword_559FFC;
uint32_t dword_55A000;
uint8_t padding_dword_55A000[8];
uint32_t dword_55A00C;
uint32_t dword_55A010;
uint8_t padding_dword_55A010[8];
uint32_t dword_55A01C;
uint32_t dword_55A020;
uint32_t dword_55A024;
uint32_t dword_55A028;
uint8_t unk_55A02C[16];
uint8_t unk_55A03C[16];
uint8_t unk_55A04C[16];
uint8_t unk_55A05C[16];
uint32_t dword_55A06C;
uint32_t dword_55A070;
uint32_t dword_55A074;
uint8_t padding_dword_55A074[2];
uint8_t unk_55A07A[2];
uint16_t word_55A07C;
uint32_t dword_55A080;
uint32_t dword_55A084;
uint32_t dword_55A088;
uint8_t unk_55A090[16];
uint32_t dword_55A0A0;
uint32_t dword_55A0A4;
uint32_t dword_55A0A8;
uint32_t dword_55A0B0;
uint32_t dword_55A0B4;
uint32_t dword_55A0B8;
uint8_t padding_dword_55A0B8[2];
uint8_t unk_55A0BE[2];
uint16_t word_55A0C0;
uint32_t dword_55A0C4;
uint32_t dword_55A0C8;
uint8_t byte_55A0CC;
uint8_t byte_55A0CD;
uint8_t unk_55A0D0[16];
uint32_t dword_55A0E0;
uint32_t dword_55A0E4;
uint32_t dword_55A0E8;
uint8_t padding_dword_55A0E8[8];
uint32_t dword_55A0F4;
uint32_t dword_55A0F8;
uint32_t dword_55A0FC;
uint8_t padding_dword_55A0FC[4];
uint8_t byte_55A104;
uint32_t dword_55A108;
uint32_t dword_55A10C;
uint32_t dword_55A110;
uint32_t dword_55A114;
uint32_t dword_55A118;
uint32_t dword_55A11C;
uint32_t dword_55A120;
uint32_t dword_55A124;
uint8_t unk_55A140[32];
uint8_t unk_55A160[32];
uint8_t unk_55A180[32];
uint8_t unk_55A1A0[32];
uint8_t unk_55A1C0[32];
uint32_t dword_55A1E0;
uint32_t dword_55A1E4;
uint32_t dword_55A200;
uint32_t dword_55A204;
uint32_t dword_55A208;
uint32_t dword_55A20C;
uint32_t dword_55A210;
uint32_t dword_55A214;
uint8_t padding_dword_55A214[4];
uint32_t dword_55A21C;
uint8_t padding_dword_55A21C[28];
uint32_t dword_55A23C;
uint8_t padding_dword_55A23C[100];
uint32_t dword_55A2A4;
uint32_t dword_55A2A8;
uint32_t dword_55A2AC;
uint32_t dword_55A2B0;
uint8_t padding_dword_55A2B0[16];
uint32_t dword_55A2C4;
uint32_t dword_55A2C8;
uint32_t dword_55A2CC;
uint32_t dword_55A2D0;
uint32_t dword_55A2D4;
uint16_t word_55A2D8;
uint8_t byte_55A2DC;
uint8_t byte_55A2DD;
uint8_t byte_55A2DE;
uint8_t byte_55A2DF;
uint8_t byte_55A2E0;
uint8_t byte_55A2E1;
uint32_t dword_55A2E4;
uint32_t dword_55A2E8;
uint32_t dword_55A2EC;
uint32_t dword_55A2F0;
uint32_t dword_55A2F4;
uint32_t dword_55A2F8;
uint32_t dword_55A2FC;
uint32_t dword_55A300;
uint8_t byte_55A304;
uint8_t byte_55A305;
uint8_t byte_55A306;
uint8_t byte_55A307;
uint8_t byte_55A308;
uint8_t byte_55A309;
uint32_t dword_55A30C;
uint32_t dword_55A310;
uint32_t dword_55A314;
uint8_t padding_dword_55A314[4];
uint8_t unk_55A31C[24];
uint8_t unk_55A334[4];
uint8_t byte_55A338;
uint8_t byte_55A339;
uint8_t byte_55A33A;
uint8_t byte_55A33B;
uint16_t word_55A33C;
uint16_t word_55A33E;
uint16_t word_55A340;
uint16_t word_55A342;
uint8_t unk_55A344[4];
uint8_t byte_55A348;
uint8_t byte_55A349;
uint8_t byte_55A34A;
uint8_t byte_55A34B;
uint16_t word_55A34C;
uint16_t word_55A34E;
uint16_t word_55A350[2];
uint16_t word_55A356[2];
uint8_t byte_55A35C;
uint8_t byte_55A35D;
uint8_t byte_55A35E;
uint16_t word_55A360[2];
uint16_t word_55A366;
uint16_t word_55A368;
uint16_t word_55A36A[9];
uint8_t padding_word_55A36A[40];
uint32_t dword_55A3B4;
uint16_t word_55A3B8;
uint32_t dword_55A3BC;
uint8_t padding_dword_55A3BC[60];
uint32_t dword_55A3FC;
uint32_t dword_55A400;
uint32_t dword_55A404;
uint32_t dword_55A408;
uint32_t dword_55A40C;
uint32_t dword_55A410;
uint32_t dword_55A414;
uint8_t unk_55A440[96];
uint8_t unk_55A4A0[12];
uint8_t unk_55A4AC[96];
uint32_t dword_55A50C;
uint8_t padding_dword_55A50C[8];
uint32_t dword_55A518;
uint32_t dword_55A51C;
uint8_t padding_dword_55A51C[42];
uint8_t unk_55A54A[2];
uint16_t word_55A54C;
uint16_t word_55A54E;
uint8_t byte_55A550;
uint32_t dword_55A554;
uint8_t padding_dword_55A554[76];
uint8_t byte_55A5A4;
uint8_t byte_55A5A8;
uint32_t dword_55A5AC;
uint8_t byte_55A5B0;
uint8_t unk_55A5B2[2];
uint16_t word_55A5B4;
uint16_t word_55A5B8;
uint8_t padding_word_55A5B8[1];
uint8_t unk_55A5BB;
uint8_t byte_55A5BC;
uint8_t byte_55A5BD;
uint8_t byte_55A5BE;
uint8_t byte_55A5BF;
uint8_t byte_55A5C0;
uint8_t byte_55A5C1;
uint32_t dword_55A5C4;
uint32_t dword_55A5C8;
uint32_t dword_55A5CC;
uint32_t dword_55A5D0;
uint8_t byte_55A5D4;
uint8_t byte_55A5D5;
uint8_t byte_55A5D6;
uint8_t byte_55A5D7;
uint8_t byte_55A5D8;
uint8_t byte_55A5D9[2];
uint8_t unk_55A5DB;
uint8_t byte_55A5DC;
uint8_t byte_55A5DD;
uint8_t byte_55A5DE;
uint8_t byte_55A5DF;
uint8_t byte_55A5E0;
uint8_t byte_55A5E1;
uint32_t dword_55A5E4;
uint32_t dword_55A5E8;
uint32_t dword_55A5EC;
uint8_t byte_55A5F0;
uint8_t unk_55A5F4[4];
uint32_t dword_55A5F8;
uint32_t dword_55A5FC;
uint8_t byte_55A600;
uint8_t byte_55A601;
uint8_t byte_55A602;
uint8_t byte_55A603;
uint8_t byte_55A604;
uint8_t byte_55A605;
uint8_t byte_55A608;
uint8_t byte_55A609[2];
uint8_t unk_55A60B;
uint8_t byte_55A60C;
uint8_t byte_55A60D;
uint8_t byte_55A60E;
uint8_t byte_55A60F;
uint8_t byte_55A610;
uint8_t byte_55A611;
uint32_t dword_55A614;
uint32_t dword_55A618;
uint32_t dword_55A61C;
uint8_t padding_dword_55A61C[12];
uint8_t unk_55A62C[4];
uint32_t dword_55A630;
uint32_t dword_55A634;
uint8_t byte_55A638;
uint8_t byte_55A639;
uint8_t byte_55A63A;
uint8_t byte_55A63B;
uint8_t byte_55A63C;
uint8_t byte_55A63D;
uint8_t byte_55A640;
uint8_t byte_55A641;
uint8_t unk_55A642[2];
uint16_t word_55A644;
uint16_t word_55A646;
uint8_t byte_55A648;
uint8_t byte_55A649;
uint8_t byte_55A64A;
uint8_t byte_55A64B;
uint8_t byte_55A64C;
uint8_t byte_55A64D;
uint32_t dword_55A650;
uint32_t dword_55A654;
uint32_t dword_55A658;
uint8_t byte_55A65C;
uint8_t byte_55A65D;
uint8_t byte_55A65E;
uint8_t byte_55A65F;
uint8_t byte_55A660;
uint8_t byte_55A661;
uint32_t dword_55A664;
uint32_t dword_55A668;
uint32_t dword_55A66C;
uint32_t dword_55A670;
uint32_t dword_55A674;
uint8_t byte_55A678;
uint8_t byte_55A679;
uint8_t byte_55A67A;
uint8_t byte_55A67B;
uint8_t byte_55A67C;
uint8_t byte_55A67D;
uint8_t byte_55A680;
uint8_t byte_55A684;
uint8_t byte_55A688;
uint8_t byte_55A68C;
uint8_t unk_55A690[32];
uint8_t unk_55A6B0[3328];
uint16_t word_55B3B0;
uint16_t word_55B3B2;
uint8_t padding_word_55B3B2[68];
uint8_t unk_55B3F8[1120];
uint8_t unk_55B858[22];
uint32_t dword_55B86E;
uint16_t word_55B872;
uint8_t padding_word_55B872[124];
uint32_t dword_55B8F4;
uint32_t dword_55B8F8;
uint32_t dword_55B8FC;
uint8_t byte_55B900;
uint8_t byte_55B901;
uint32_t dword_55B980;
uint8_t padding_dword_55B980[8];
uint32_t dword_55B98C;
uint32_t dword_55B990;
uint32_t dword_55B994;
uint32_t dword_55B998;
uint32_t dword_55B99C;
uint8_t padding_dword_55B99C[2];
uint16_t word_55B9A2;
uint8_t padding_word_55B9A2[64];
uint32_t dword_55B9E4;
uint8_t padding_dword_55B9E4[32];
uint32_t dword_55BA08;
uint8_t padding_dword_55BA08[9];
uint8_t unk_55BA15[185];
uint32_t dword_55BACE;
uint8_t padding_dword_55BACE[7];
uint8_t unk_55BAD9;
uint8_t unk_55BADA;
uint8_t unk_55BADB[183];
uint32_t dword_55BB92;
uint8_t padding_dword_55BB92[7];
uint8_t byte_55BB9D[271];
uint8_t unk_55BCAC[2];
uint8_t byte_55BCAE[192];
uint16_t word_55BD6E[5];
uint8_t byte_55BD80;
uint8_t byte_55BD81;
uint8_t byte_55BD82;
uint8_t byte_55BD83;
uint8_t byte_55BD84;
uint8_t byte_55BD85;
uint8_t byte_55BD86;
uint8_t byte_55BD87;
uint8_t byte_55BD88;
uint8_t byte_55BD89;
uint8_t byte_55BD8A;
uint8_t byte_55BD8B;
uint8_t byte_55BD8C;
uint8_t byte_55BD8D;
uint8_t byte_55BD8E;
uint8_t byte_55BD8F;
uint8_t byte_55BD90;
uint8_t byte_55BD91;
uint8_t byte_55BD92;
uint8_t byte_55BD93;
uint8_t byte_55BD94;
uint32_t dword_55BD95;
uint8_t unk_55BD9C[4];
uint32_t dword_55BDA8;
uint32_t dword_55BDAC;
uint16_t word_55BDB8;
uint16_t word_55BDBA;
uint16_t word_55BDBC;
uint16_t word_55BDC0;
uint16_t word_55BDC2;
uint16_t word_55BDC4;
uint16_t word_55BDC8;
uint16_t word_55BDCA;
uint16_t word_55BDCC;
uint32_t dword_55BDD0;
uint32_t dword_55BDD4;
uint32_t dword_55BDD8;
uint8_t padding_dword_55BDD8[8];
uint8_t byte_55BDE4;
uint8_t byte_55BDE5;
uint8_t byte_55BDE6;
uint8_t byte_55BDE8;
uint8_t byte_55BDE9;
uint8_t byte_55BDEA;
uint8_t byte_55BDEC;
uint8_t byte_55BDED;
uint8_t byte_55BDEE;
uint8_t unk_55BDF0[3840];
uint16_t word_55CCF0;
uint16_t word_55CCF2[2];
uint16_t word_55CCF8;
uint16_t word_55CCFA;
uint8_t padding_word_55CCFA[8];
uint8_t byte_55CD04;
uint8_t unk_55CD05[3];
uint8_t unk_55CD08[8];
uint8_t unk_55CD10[48];
uint8_t unk_55CD40[48];
uint8_t unk_55CD70[48];
uint8_t unk_55CDA0[48];
uint8_t unk_55CDD0[100];
uint8_t unk_55CE34[96];
uint32_t dword_55CE94;
uint32_t dword_55CE98;
uint32_t dword_55CE9C;
uint32_t dword_55CEA0;
uint32_t dword_55CEA4;
uint32_t dword_55CEA8;
uint32_t dword_55CEAC;
uint32_t dword_55CEB0;
uint32_t dword_55CEB4;
uint32_t dword_55CEB8;
uint32_t dword_55CEBC;
uint32_t dword_55CEC0;
uint32_t dword_55CEC4;
uint32_t dword_55CEC8;
uint32_t dword_55CECC;
uint32_t dword_55CED0;
uint32_t dword_55CED4;
uint32_t dword_55CED8;
uint32_t dword_55CEDC;
uint32_t dword_55CEE0;
uint32_t dword_55CEE4;
uint8_t unk_55CEE8[8];
uint32_t dword_55CEF0;
uint32_t dword_55CEF4;
uint32_t dword_55CEF8;
uint32_t dword_55CEFC;
uint32_t dword_55CF00;
uint32_t dword_55CF04;
uint32_t dword_55CF08;
uint8_t byte_55CF0C;
uint8_t byte_55CF0D[127];
uint32_t dword_55CF8C;
uint32_t dword_55CF90;
uint32_t dword_55CF94;
uint32_t dword_55CF98;
uint32_t dword_55CF9C;
uint32_t dword_55CFA0;
uint32_t dword_55CFA4;
uint32_t dword_55CFA8;
uint8_t padding_dword_55CFA8[16];
uint8_t byte_55CFBC;
uint8_t byte_55CFBE;
uint8_t byte_55CFC0;
uint8_t byte_55CFC2[122];
uint16_t word_55D03C;
uint8_t padding_word_55D03C[50];
uint32_t dword_55D070;
uint32_t dword_55D074;
uint32_t dword_55D078;
uint8_t padding_dword_55D078[2];
uint8_t unk_55D07E[2];
uint16_t word_55D080;
uint32_t dword_55D084;
uint32_t dword_55D088;
uint16_t word_55D0A0;
uint8_t byte_55D0A2;
uint8_t byte_55D0A3;
uint32_t dword_55D0A4;
uint8_t padding_dword_55D0A4[40];
uint8_t byte_55D0D0;
uint32_t dword_55D0E0;
uint8_t padding_dword_55D0E0[444];
uint8_t unk_55D2A0[128];
uint16_t word_55D320;
uint8_t padding_word_55D320[150];
uint8_t byte_55D3B8;
uint8_t byte_55D3BC;
uint32_t dword_55D3C0;
uint16_t word_55D3C8;
uint16_t word_55D3CA;
uint16_t word_55D3CC;
uint32_t dword_55D3D0;
uint32_t dword_55D3D4;
uint32_t dword_55D3D8;
uint8_t unk_55D3E0[8];
uint8_t unk_55D3E8[16];
uint32_t dword_55D3F8;
uint32_t dword_55D3FC;
uint32_t dword_55D400;
uint8_t unk_55D408[14];
uint8_t unk_55D416[2];
uint16_t word_55D418[2];
uint16_t word_55D420;
uint16_t word_55D422;
uint16_t word_55D424;
uint8_t byte_55D428;
uint32_t dword_55D430;
uint32_t dword_55D434;
uint32_t dword_55D440;
uint32_t dword_55D444;
uint32_t dword_55D448;
uint32_t dword_55D44C;
uint8_t padding_dword_55D44C[368];
uint32_t dword_55D5C0;
uint8_t padding_dword_55D5C0[8];
uint32_t dword_55D5CC;
uint32_t dword_55D5D0;
uint8_t byte_55D5D4;
uint8_t byte_55D5D5;
uint8_t unk_55D5D8[16];
uint8_t unk_55D5E8[8];
uint8_t unk_55D5F0[8];
uint8_t unk_55D5F8[12];
uint8_t unk_55D604[2];
uint16_t word_55D606;
uint16_t word_55D608;
uint16_t word_55D60A;
uint8_t padding_word_55D60A[16];
uint8_t unk_55D61C[36];
uint16_t word_55D640;
uint16_t word_55D642;
uint8_t unk_55D644[12];
uint8_t unk_55D650[12];
uint8_t unk_55D65C[2];
uint16_t word_55D65E;
uint8_t unk_55D660[2];
uint16_t word_55D662;
uint8_t padding_word_55D662[8];
uint8_t unk_55D66C[20];
uint16_t word_55D680;
uint16_t word_55D682;
uint16_t word_55D684;
uint16_t word_55D686;
uint8_t padding_word_55D686[12];
uint8_t unk_55D694[4];
uint8_t unk_55D698[12];
uint8_t unk_55D6A4[14];
uint8_t unk_55D6B2[6];
uint8_t unk_55D6B8[6];
uint16_t word_55D6BE;
uint8_t padding_word_55D6BE[2];
uint8_t unk_55D6C2[6];
uint8_t unk_55D6C8[10];
uint8_t unk_55D6D2[30];
uint16_t word_55D6F0;
uint16_t word_55D6F2;
uint8_t padding_word_55D6F2[10];
uint8_t unk_55D6FE[10];
uint8_t unk_55D708[2];
uint16_t word_55D70A;
uint8_t padding_word_55D70A[10];
uint8_t unk_55D716[2];
uint16_t word_55D718;
uint16_t word_55D71C;
uint16_t word_55D71E;
uint8_t padding_word_55D71E[8];
uint8_t unk_55D728[2];
uint16_t word_55D72A;
uint8_t padding_word_55D72A[2];
uint16_t word_55D72E;
uint8_t padding_word_55D72E[6];
uint16_t word_55D736;
uint8_t unk_55D740[12];
uint16_t word_55D74C;
uint16_t word_55D74E;
uint16_t word_55D750;
uint16_t word_55D752;
uint16_t word_55D754;
uint16_t word_55D760;
uint16_t word_55D762;
uint8_t padding_word_55D762[10];
uint8_t unk_55D76E[970];
uint32_t dword_55DB38;
uint32_t dword_55DB3C;
uint32_t dword_55DB40;
uint32_t dword_55DB44;
uint8_t padding_dword_55DB44[4];
uint32_t dword_55DB4C;
uint32_t dword_55DB50;
uint32_t dword_55DB54;
uint8_t padding_dword_55DB54[20];
uint16_t word_55DB6C;
uint16_t word_55DB6E;
uint16_t word_55DB70;
uint16_t word_55DB74;
uint16_t word_55DB76;
uint16_t word_55DB78;
uint8_t padding_word_55DB78[98];
uint32_t dword_55DC0C;
uint32_t dword_55DC10;
uint32_t dword_55DC14;
uint8_t padding_dword_55DC14[4];
uint8_t unk_55DC1C[6];
uint8_t byte_55DC22[9];
uint8_t byte_55DC2B;
uint32_t dword_55DC2C;
uint8_t padding_dword_55DC2C[6];
uint8_t byte_55DC36[20];
uint8_t byte_55DC4A[20];
uint8_t byte_55DC5E[14];
uint32_t dword_55DC6C;
uint32_t dword_55DC70;
uint32_t dword_55DC74;
uint32_t dword_55DC78;
uint32_t dword_55DC7C;
uint32_t dword_55DC80;
uint32_t dword_55DC84;
uint8_t padding_dword_55DC84[52];
uint32_t dword_55DCBC;
uint8_t unk_55DCC0[4];
uint8_t byte_55DCC4;
uint8_t byte_55DCC5;
uint8_t byte_55DCC6;
uint16_t word_55DCC8;
uint32_t dword_55DCCC;
uint32_t dword_55DCD0;
uint32_t dword_55DCD4;
uint8_t padding_dword_55DCD4[4];
uint8_t byte_55DCDC;
uint8_t byte_55DCDD;
uint8_t byte_55DCDE;
uint8_t byte_55DCDF[45];
uint32_t dword_55DD0C;
uint32_t dword_55DD10;
uint32_t dword_55DD14;
uint32_t dword_55DD18;
uint32_t dword_55DD1C;
uint8_t padding_dword_55DD1C[6];
uint32_t dword_55DD26;
uint32_t dword_55DD2A;
uint8_t padding_dword_55DD2A[2022];
uint8_t unk_55E514[4096];
uint32_t dword_55F514;
uint32_t dword_55F518;
uint32_t dword_55F51C;
uint8_t padding_dword_55F51C[6];
uint32_t dword_55F526;
uint32_t dword_55F52A;
uint8_t padding_dword_55F52A[2022];
uint32_t dword_55FD14;
uint8_t padding_dword_55FD14[2];
uint32_t dword_55FD1A;
uint16_t word_55FD1E[4];
uint32_t dword_55FD30;
uint32_t dword_55FD34;
uint32_t dword_55FD38;
uint32_t dword_55FD3C;
uint32_t dword_55FD40;
uint32_t dword_55FD44;
uint8_t padding_dword_55FD44[4];
uint32_t dword_55FD4C;
uint32_t dword_55FD50;
uint32_t dword_55FD54;
uint32_t dword_55FD58;
uint32_t dword_55FD5C;
uint32_t dword_55FD60;
uint32_t dword_55FD68;
uint32_t dword_55FD6C;
uint32_t dword_55FD70;
uint32_t dword_55FD74;
uint16_t word_55FD78;
uint16_t word_55FD7A[4];
uint8_t padding_word_55FD7A[4];
uint32_t dword_55FD8C;
uint32_t dword_55FD90;
uint32_t dword_55FD94;
uint8_t padding_dword_55FD94[4];
uint16_t word_55FD9C;
uint16_t word_55FD9E;
uint16_t word_55FDA0;
uint32_t dword_55FDA4;
uint32_t dword_55FDA8;
uint32_t dword_55FDAC;
uint16_t word_55FDB0;
uint8_t byte_55FDB4;
uint8_t byte_55FDB5;
uint8_t byte_55FDB6;
uint8_t unk_55FDB8[4];
uint32_t dword_55FDBC;
uint32_t dword_55FDC0;
uint32_t dword_55FDC8;
uint32_t dword_55FDCC;
uint32_t dword_55FDD0;
uint8_t padding_dword_55FDD0[52];
uint16_t word_55FE08;
uint16_t word_55FE0A;
uint16_t word_55FE0C;
uint16_t word_55FE10;
uint16_t word_55FE12;
uint16_t word_55FE14;
uint16_t word_55FE18;
uint16_t word_55FE1A;
uint16_t word_55FE1C;
uint16_t word_55FE20;
uint16_t word_55FE22;
uint16_t word_55FE24;
uint32_t dword_55FE28;
uint32_t dword_55FE2C;
uint32_t dword_55FE30;
uint16_t word_55FE34;
uint16_t word_55FE44;
uint16_t word_55FE54;
uint16_t word_55FE64;
uint32_t dword_55FE68;
uint32_t dword_55FE6C;
uint16_t word_55FE74[3];
uint16_t word_55FE7E[6];
uint8_t unk_55FE98[360];
uint8_t unk_560000[1688];
uint32_t dword_560698;
uint8_t padding_dword_560698[1020];
uint8_t unk_560A98[8];
uint8_t unk_560AA0[8];
uint8_t unk_560AA8[8];
uint8_t unk_560AB0[24];
uint32_t dword_560AC8;
uint32_t dword_560ACC;
uint32_t dword_560AD0;
uint32_t dword_560AD4;
uint8_t padding_dword_560AD4[2];
uint16_t word_560ADA;
uint16_t word_560ADC;
uint8_t padding_word_560ADC[254];
uint32_t dword_560BDC;
uint32_t dword_560BE0;
uint8_t byte_560BE4;
uint8_t byte_560BE5;
uint8_t byte_560BE6;
uint8_t byte_560BE7;
uint32_t dword_560BE8;
uint32_t dword_560BEC;
uint32_t dword_560BF0;
uint32_t dword_560BF4;
uint32_t dword_560BF8;
uint32_t dword_560C00;
uint32_t dword_560C04;
uint32_t dword_560C08;
uint32_t dword_560C0C;
uint32_t dword_560C10;
uint8_t padding_dword_560C10[8];
uint32_t dword_560C1C;
uint8_t padding_dword_560C1C[8];
uint32_t dword_560C28;
uint8_t padding_dword_560C28[16];
uint32_t dword_560C3C;
uint32_t dword_560C40;
uint8_t padding_dword_560C40[56];
uint32_t dword_560C7C;
uint32_t dword_560C80;
uint32_t dword_560C84;
uint8_t padding_dword_560C84[124];
uint8_t unk_560D04[99];
uint8_t unk_560D67[69];
uint8_t unk_560DAC[8];
uint32_t dword_560DB4;
uint32_t dword_560DB8;
uint32_t dword_560DBC;
uint32_t dword_560DC0;
uint8_t unk_560DC4[64];
uint16_t word_560E04;
uint16_t word_560E06;
uint16_t word_560E08;
uint16_t word_560E0C;
uint16_t word_560E10;
uint16_t word_560E14;
uint16_t word_560E16;
uint8_t padding_word_560E16[4];
uint16_t word_560E1C;
uint16_t word_560E1E;
uint16_t word_560E20;
uint8_t unk_560E24[8];
uint16_t word_560E2C;
uint16_t word_560E2E;
uint8_t padding_word_560E2E[4];
uint16_t word_560E34;
uint8_t padding_word_560E34[6];
uint16_t word_560E3C;
uint8_t padding_word_560E3C[8];
uint16_t word_560E46;
uint8_t padding_word_560E46[6];
uint16_t word_560E4E;
uint8_t padding_word_560E4E[22];
uint16_t word_560E66;
uint8_t padding_word_560E66[924];
uint32_t dword_561204;
uint32_t dword_561208;
uint8_t padding_dword_561208[1016];
uint16_t word_561604;
uint8_t padding_word_561604[1022];
uint32_t dword_561A04;
uint32_t dword_561A08;
uint8_t padding_dword_561A08[1016];
uint8_t unk_561E04[1024];
uint32_t dword_562204;
uint32_t dword_562208;
uint32_t dword_56220C;
uint32_t dword_562210;
uint32_t dword_562214;
uint32_t dword_562218;
uint8_t padding_dword_562218[10254];
uint32_t dword_564A2A;
uint32_t dword_564A2E;
uint32_t dword_564A32;
uint32_t dword_564A36;
uint8_t padding_dword_564A36[8];
uint8_t unk_564A42[2];
uint16_t word_564A44[2];
uint16_t word_564A4C;
uint16_t word_564A4E;
uint16_t word_564A50[2];
uint8_t padding_word_564A50[4];
uint32_t dword_564A5A;
uint32_t dword_564A5E;
uint32_t dword_564A62;
uint16_t word_564A66;
uint16_t word_564A68;
uint8_t unk_564A6C[36];
uint32_t dword_564A90;
uint32_t dword_564A94;
uint32_t dword_564A98;
uint8_t unk_564A9C[36];
uint8_t unk_564AC0[106];
uint32_t dword_564B2A;
uint32_t dword_564B2E;
uint32_t dword_564B34;
uint32_t dword_564B38;
uint8_t padding_dword_564B38[246];
uint8_t unk_564C32[2];
uint16_t word_564C34;
uint8_t padding_word_564C34[4];
uint32_t dword_564C3A;
uint8_t padding_dword_564C3A[52];
uint32_t dword_564C72;
uint8_t padding_dword_564C72[62];
uint8_t unk_564CB4[36];
uint32_t dword_564CD8;
uint32_t dword_564CDC;
uint32_t dword_564CE0;
uint8_t unk_564CE4[64];
uint8_t unk_564D24[64];
uint8_t unk_564D64[42000];
uint32_t dword_56F174;
uint32_t dword_56F178;
uint32_t dword_56F17C;
uint8_t padding_dword_56F17C[2];
uint32_t dword_56F182;
uint32_t dword_56F186;
uint32_t dword_56F18C;
uint8_t padding_dword_56F18C[1020];
uint32_t dword_56F58C;
uint8_t padding_dword_56F58C[506];
uint8_t unk_56F78A[2];
uint16_t word_56F78C;
uint8_t padding_word_56F78C[4];
uint32_t dword_56F792;
uint8_t padding_dword_56F792[118];
uint8_t byte_56F80C;
uint32_t dword_56F810;
uint32_t dword_56F814;
uint32_t dword_56F818;
uint8_t unk_56F81C[8];
uint32_t dword_56F824;
uint8_t padding_dword_56F824[4];
uint16_t word_56F82C;
uint16_t word_56F82E;
uint8_t padding_word_56F82E[11];
uint8_t byte_56F83B[9];
uint8_t byte_56F844;
uint32_t dword_56F848;
uint32_t dword_56F84C;
uint16_t word_56F850;
uint16_t word_56F852;
uint8_t padding_word_56F852[16];
uint16_t word_56F864;
uint8_t padding_word_56F864[13];
uint8_t byte_56F873[9];
uint8_t byte_56F87C;
uint32_t dword_56F880;
uint32_t dword_56F884;
uint16_t word_56F888;
uint16_t word_56F88A;
uint8_t padding_word_56F88A[16];
uint16_t word_56F89C;
uint8_t padding_word_56F89C[22];
uint8_t byte_56F8B4[56];
uint8_t byte_56F8EC;
uint32_t dword_56F8F0;
uint32_t dword_56F8F4;
uint8_t padding_dword_56F8F4[20];
uint16_t word_56F90C;
uint16_t word_56F90E;
uint8_t padding_word_56F90E[20];
uint8_t byte_56F924;
uint32_t dword_56F928;
uint32_t dword_56F92C;
uint8_t padding_dword_56F92C[20];
uint16_t word_56F944;
uint16_t word_56F946;
uint8_t padding_word_56F946[20];
uint8_t byte_56F95C;
uint32_t dword_56F960;
uint32_t dword_56F964;
uint8_t padding_dword_56F964[20];
uint16_t word_56F97C;
uint16_t word_56F97E;
uint8_t padding_word_56F97E[20];
uint8_t byte_56F994[8];
uint32_t dword_56F99C;
uint8_t padding_dword_56F99C[2];
uint16_t word_56F9A2;
uint8_t padding_word_56F9A2[18];
uint16_t word_56F9B6;
uint8_t padding_word_56F9B6[20];
uint8_t byte_56F9CC;
uint32_t dword_56F9D0;
uint32_t dword_56F9D4;
uint8_t padding_dword_56F9D4[22];
uint16_t word_56F9EE;
uint8_t padding_word_56F9EE[20];
uint8_t byte_56FA04;
uint32_t dword_56FA08;
uint32_t dword_56FA0C;
uint8_t padding_dword_56FA0C[22];
uint16_t word_56FA26;
uint8_t padding_word_56FA26[20];
uint8_t byte_56FA3C;
uint32_t dword_56FA40;
uint32_t dword_56FA44;
uint8_t padding_dword_56FA44[20];
uint16_t word_56FA5C;
uint16_t word_56FA5E;
uint8_t padding_word_56FA5E[12];
uint8_t byte_56FA6C[8];
uint8_t unk_56FA74;
uint8_t byte_56FA75[2];
uint8_t byte_56FA77[573];
uint8_t unk_56FCB4;
uint8_t byte_56FCB5[3071];
uint8_t unk_5708B4[36];
uint8_t byte_5708D8;
uint16_t word_5708DA;
uint8_t padding_word_5708DA[2];
uint16_t word_5708DE;
uint16_t word_5708E0;
uint16_t word_5708E2;
uint32_t dword_5708E8;
uint8_t padding_dword_5708E8[16];
uint8_t unk_5708FC[43];
uint8_t byte_570927;
uint32_t dword_570930;
uint8_t padding_dword_570930[54];
uint16_t word_57096A;
uint8_t padding_word_57096A[2];
uint16_t word_57096E;
uint16_t word_570970;
uint16_t word_570972;
uint8_t padding_word_570972[24];
uint8_t byte_57098C;
uint8_t byte_57098D;
uint8_t byte_57098E;
uint8_t byte_57098F[7];
uint8_t byte_570996;
uint8_t byte_570997[177];
uint8_t unk_570A48[820];
uint8_t unk_570D7C[72];
uint8_t unk_570DC4[8008];
uint8_t unk_572D0C[38];
uint16_t word_572D32;
uint8_t padding_word_572D32[2];
uint16_t word_572D36;
uint16_t word_572D38;
uint16_t word_572D3A;
uint8_t padding_word_572D3A[24];
uint32_t dword_572D54;
uint32_t dword_572D58;
uint8_t unk_572D5C;
uint8_t byte_572D5D[1143];
uint8_t unk_5731D4[4488];
uint32_t dword_57435C;
uint32_t dword_574360;
uint8_t unk_574364[16384];
uint8_t unk_578364[53248];
uint8_t unk_585364[1268];
uint8_t unk_585858[11020];
uint8_t unk_588364[196608];
uint8_t unk_5B8364[252588];
uint8_t unk_5F5E10[9553];
uint8_t unk_5F8361[3];
uint8_t byte_5F8364;
uint8_t byte_5F8365[5];
uint8_t byte_5F836A;
uint32_t dword_5F836C;
uint32_t dword_5F8370;
uint8_t padding_dword_5F8370[2];
uint32_t dword_5F8376;
uint32_t dword_5F837A;
uint32_t dword_5F8380;
uint32_t dword_5F8384;
uint32_t dword_5F8388;
uint8_t padding_dword_5F8388[2];
uint32_t dword_5F838E;
uint32_t dword_5F8392;
uint32_t dword_5F8398;
uint32_t dword_5F83A0;
uint16_t word_5F83A8;
uint16_t word_5F83AA;
uint16_t word_5F83AC;
uint8_t padding_word_5F83AC[10];
uint32_t dword_5F83B8;
uint16_t word_5F83BC;
uint8_t unk_5F83C0[16];
uint8_t unk_5F83D0[2];
uint16_t word_5F83D2;
uint8_t padding_word_5F83D2[1];
uint8_t byte_5F83D5;
uint8_t byte_5F83D8;
uint8_t byte_5F83DA[49];
uint8_t byte_5F840B;
uint8_t byte_5F8410;
uint32_t dword_5F8412;
uint32_t dword_5F8416;
uint8_t padding_dword_5F8416[7];
uint8_t byte_5F8421;
uint32_t dword_5F8424;
uint32_t dword_5F8428;
uint16_t word_5F842C;
uint8_t padding_word_5F842C[70];
uint8_t byte_5F8474;
uint8_t byte_5F8475[5];
uint16_t word_5F847A;
uint32_t dword_5F8480;
uint32_t dword_5F8484;
uint16_t word_5F8488;
uint16_t word_5F848C;
uint16_t word_5F848E;
uint8_t padding_word_5F848E[12];
uint16_t word_5F849C;
uint16_t word_5F84A0;
uint8_t padding_word_5F84A0[41];
uint32_t dword_5F84CB;
uint8_t byte_5F84CF;
uint8_t byte_5F84D0;
uint8_t unk_5F84D1;
uint8_t unk_5F84D2;
uint8_t unk_5F84D3;
uint8_t byte_5F84D4;
uint8_t byte_5F84D5;
uint8_t byte_5F84D6;
uint8_t byte_5F84D7;
uint8_t byte_5F84D8;
uint8_t byte_5F84D9[15];
uint32_t dword_5F84E8;
uint8_t unk_5F84EC[3];
uint8_t byte_5F84EF[269];
uint8_t unk_5F85FC[526];
uint32_t dword_5F880A;
uint32_t dword_5F880E;
uint8_t padding_dword_5F880E[26];
uint8_t unk_5F882C[32];
uint8_t unk_5F884C[24];
uint16_t word_5F8864;
uint16_t word_5F8866;
uint16_t word_5F8868;
uint8_t padding_word_5F8868[18];
uint16_t word_5F887C;
uint16_t word_5F887E;
uint16_t word_5F8880;
uint8_t padding_word_5F8880[10];
uint32_t dword_5F888C;
uint32_t dword_5F8890;
uint32_t dword_5F8894;
uint8_t padding_dword_5F8894[2];
uint32_t dword_5F889A;
uint32_t dword_5F889E;
uint32_t dword_5F88A4;
uint16_t word_5F88A8;
uint8_t byte_5F88AC;
uint8_t byte_5F88AD[2];
uint8_t byte_5F88AF;
uint8_t byte_5F88B0;
uint32_t dword_5F88B1;
uint32_t dword_5F88B5;
uint8_t padding_dword_5F88B5[156];
uint32_t dword_5F8955;
uint32_t dword_5F8959;
uint32_t dword_5F895D;
uint8_t padding_dword_5F895D[10];
uint8_t byte_5F896B;
uint8_t byte_5F896C;
uint32_t dword_5F896D;
uint8_t padding_dword_5F896D[12];
uint32_t dword_5F897D;
uint8_t padding_dword_5F897D[4];
uint32_t dword_5F8985;
uint8_t byte_5F898C[5];
uint32_t dword_5F8991;
uint32_t dword_5F8995;
uint8_t unk_5F8999[4];
uint32_t dword_5F899D;
uint8_t byte_5F89A2[3];
uint32_t dword_5F89A5;
uint8_t padding_dword_5F89A5[4];
uint32_t dword_5F89AD;
uint8_t padding_dword_5F89AD[11];
uint8_t byte_5F89BC;
uint16_t word_5F89BE;
uint8_t padding_word_5F89BE[2];
uint8_t byte_5F89C2[4];
uint16_t word_5F89C6;
uint8_t padding_word_5F89C6[141];
uint32_t dword_5F8A55;
uint8_t byte_5F8A59[5];
uint8_t byte_5F8A5E[12];
uint32_t dword_5F8A6A;
uint32_t dword_5F8A6E;
uint8_t padding_dword_5F8A6E[163];
uint8_t byte_5F8B15[83];
uint8_t byte_5F8B68[12];
uint32_t dword_5F8B74;
uint32_t dword_5F8B78;
uint8_t padding_dword_5F8B78[100];
uint8_t unk_5F8BE0[864];
uint8_t unk_5F8F40[97];
uint8_t byte_5F8FA1[427];
uint8_t unk_5F914C[53012];
uint8_t unk_606060[237472];
uint8_t unk_640000[493516];
uint8_t unk_6B87CC[143360];
uint8_t unk_6DB7CC[48];
uint8_t unk_6DB7FC[80];
uint8_t unk_6DB84C[3968];
uint8_t unk_6DC7CC[48];
uint8_t byte_6DC7FC;
uint8_t byte_6DC7FD;
uint8_t byte_6DC7FE[4542];
uint32_t dword_6DD9BC;
uint32_t dword_6DD9C0;
uint32_t dword_6DD9C4;
uint32_t dword_6DD9C8;
uint8_t byte_6DD9CC;
uint8_t byte_6DD9CD;
uint8_t byte_6DD9CE[18939];
uint32_t dword_6E23C9;
uint32_t dword_6E23CD;
uint16_t word_6E23D4;
uint16_t word_6E23D6;
uint16_t word_6E23D8;
uint16_t word_6E23DA;
uint8_t unk_6E23DC;
uint8_t byte_6E23DD[7];
uint8_t byte_6E23E4[7366];
uint32_t dword_6E40AA;
uint32_t dword_6E40AE;
uint16_t word_6E40B2[2];
uint8_t padding_word_6E40B2[5448];
uint16_t word_6E5600;
uint16_t word_6E5602;
uint16_t word_6E5604;
uint8_t padding_word_6E5604[582];
uint16_t word_6E584C;
uint16_t word_6E584E;
uint16_t word_6E5850;
uint8_t padding_word_6E5850[18518];
uint8_t unk_6EA0A8[4];
uint8_t unk_6EA0AC[4];
uint8_t unk_6EA0B0[24400];
uint8_t unk_6F0000[8364];
uint8_t unk_6F20AC[4];
uint32_t dword_6F20B0;
uint8_t padding_dword_6F20B0[248];
uint8_t unk_6F21AC[8192];
uint8_t unk_6F41AC[8192];
uint8_t unk_6F61AC[8192];
uint8_t unk_6F81AC[8192];
uint8_t unk_6FA1AC[16640];
uint8_t unk_6FE2AC[7508];
uint8_t unk_700000[5292];
uint8_t unk_7014AC[256];
uint8_t unk_7015AC[16384];
uint32_t dword_7055AC;
uint8_t padding_dword_7055AC[252];
uint8_t unk_7056AC[256];
uint8_t unk_7057AC[8192];
uint8_t unk_7077AC[8192];
uint8_t unk_7097AC[16000];
uint32_t dword_70D62C;
uint8_t padding_dword_70D62C[380];
uint8_t unk_70D7AC[768];
uint32_t dword_70DAAC;
uint8_t padding_dword_70DAAC[380];
uint8_t unk_70DC2C[1152];
uint32_t dword_70E0AC;
uint8_t padding_dword_70E0AC[252];
uint32_t dword_70E1AC;
uint32_t dword_70E1B0;
uint8_t padding_dword_70E1B0[4088];
uint8_t unk_70F1AC[147456];
uint8_t unk_7331AC[49152];
uint8_t unk_73F1AC[4096];
uint8_t unk_7401AC[8192];
uint8_t unk_7421AC[8192];
uint32_t dword_7441AC;
uint8_t unk_7441B0[45812];
uint16_t word_74F4A4;
uint8_t padding_word_74F4A4[3078];
uint32_t dword_7500AC;
uint8_t padding_dword_7500AC[252];
uint8_t unk_7501AC[896];
uint32_t dword_75052C;
uint8_t padding_dword_75052C[252];
uint8_t unk_75062C[1152];
uint16_t word_750AAC;
uint16_t word_750AAE[3];
uint8_t padding_word_750AAE[754];
uint32_t dword_750DAA;
uint32_t dword_750DAE;
uint16_t word_750DB2[2];
uint8_t padding_word_750DB2[756];
uint32_t dword_7510AC;
uint8_t padding_dword_7510AC[252];
uint32_t dword_7511AC;
uint8_t padding_dword_7511AC[124];
uint8_t unk_75122C[768];
uint8_t unk_75152C[256];
uint8_t unk_75162C[4];
uint8_t byte_751630;
uint8_t byte_751631;
uint8_t byte_751632;
uint16_t word_751634;
uint16_t word_751636;
uint16_t word_751638;
uint16_t word_75163A;
uint8_t padding_word_75163A[16];
uint8_t unk_75164C[256];
uint8_t byte_75174C[40];
uint32_t dword_751774;
uint32_t dword_751778;
uint16_t word_75177C;
uint16_t word_75177E;
uint8_t padding_word_75177E[60];
uint32_t dword_7517BC;
uint8_t padding_dword_7517BC[12];
uint32_t dword_7517CC;
uint32_t dword_7517D0;
uint32_t dword_7517D4;
uint32_t dword_7517D8;
uint32_t dword_7517DC;
uint8_t byte_7517E0;
uint8_t byte_7517E1;
uint8_t byte_7517E2;
uint8_t byte_7517E3[25];
uint32_t dword_7517FC;
uint8_t padding_dword_7517FC[28];
uint16_t word_75181C;
uint16_t word_75181E;
uint8_t padding_word_75181E[12];
uint32_t dword_75182C;
uint8_t padding_dword_75182C[12];
uint32_t dword_75183C;
uint8_t padding_dword_75183C[12];
uint8_t byte_75184C;
uint8_t byte_75184D;
uint8_t byte_751850;
uint8_t byte_751851;
uint8_t byte_751852;
uint8_t byte_751853[361];
uint32_t dword_7519BC;
uint8_t padding_dword_7519BC[12];
uint8_t unk_7519CC[256];
uint8_t unk_751ACC[3584];
uint8_t unk_7528CC[2688];
uint32_t dword_75334C;
uint32_t dword_753350;
uint32_t dword_753354;
uint32_t dword_753358;
uint32_t dword_75335C;
uint32_t dword_753360;
uint16_t word_753364;
uint16_t word_753366;
uint16_t word_753368;
uint16_t word_75336A;
uint16_t word_75336C;
uint16_t word_75336E;
uint8_t padding_word_75336E[12];
uint32_t dword_75337C;
uint8_t padding_dword_75337C[12];
uint8_t unk_75338C[280];
uint16_t word_7534A4;
uint8_t padding_word_7534A4[134];
uint32_t dword_75352C;
uint8_t padding_dword_75352C[28];
uint8_t unk_75354C[32768];
uint8_t unk_75B54C[32256];
uint32_t dword_76334C;
uint8_t padding_dword_76334C[508];
uint8_t unk_76354C[2560];
uint8_t unk_763F4C[24];
uint32_t dword_763F64;
uint8_t padding_dword_763F64[53];
uint8_t unk_763F9D[92];
uint8_t unk_763FF9[81];
uint8_t unk_76404A[155];
uint8_t unk_7640E5[12];
uint8_t unk_7640F1[9];
uint8_t unk_7640FA[148];
uint8_t unk_76418E[99];
uint8_t unk_7641F1[112];
uint8_t unk_764261[57];
uint8_t unk_76429A[64];
uint8_t unk_7642DA[44];
uint8_t unk_764306[57];
uint8_t unk_76433F[51];
uint8_t unk_764372[75];
uint8_t unk_7643BD[76];
uint8_t unk_764409[100];
uint8_t unk_76446D[87];
uint8_t unk_7644C4[44];
uint8_t unk_7644F0[14];
uint8_t unk_7644FE[18];
uint8_t unk_764510[7];
uint8_t unk_764517[52];
uint8_t unk_76454B[7];
uint8_t unk_764552[68];
uint8_t unk_764596[16];
uint8_t unk_7645A6[36];
uint8_t unk_7645CA[44];
uint8_t unk_7645F6[44];
uint8_t unk_764622[87];
uint8_t unk_764679[64];
uint8_t unk_7646B9[75];
uint8_t unk_764704[18];
uint8_t unk_764716[18];
uint8_t unk_764728[18];
uint8_t unk_76473A[34];
uint8_t unk_76475C[18];
uint8_t unk_76476E[18];
uint8_t unk_764780[484];
uint8_t unk_764964[3584];
uint32_t dword_765764;
uint8_t padding_dword_765764[7420];
uint8_t unk_767464[20480];
uint8_t unk_76C464[4160];
uint16_t word_76D4A4;
uint8_t padding_word_76D4A4[11299];
uint8_t unk_7700C9[21467];
uint8_t unk_7754A4[4096];
uint8_t unk_7764A4[32800];
uint8_t unk_77E4C4[2];
uint16_t word_77E4C6;
uint8_t padding_word_77E4C6[16];
uint8_t unk_77E4D8[2];
uint16_t word_77E4DA;
uint8_t padding_word_77E4DA[6];
uint16_t word_77E4E2;
uint8_t padding_word_77E4E2[10];
uint8_t byte_77E4EE;
uint8_t byte_77E4EF;
uint8_t byte_77E4F0[100];
uint8_t unk_77E554[2];
uint16_t word_77E556;
uint8_t padding_word_77E556[16];
uint8_t unk_77E568[2];
uint16_t word_77E56A;
uint8_t padding_word_77E56A[6];
uint16_t word_77E572;
uint8_t padding_word_77E572[10];
uint8_t byte_77E57E;
uint8_t byte_77E57F;
uint8_t byte_77E580[100];
uint32_t dword_77E5E4;
uint32_t dword_77E5E8;
uint32_t dword_77E5EC;
uint32_t dword_77E5F0;
uint8_t unk_77E5F4[3];
uint8_t byte_77E5F7[5];
uint8_t byte_77E5FC;
uint8_t byte_77E5FD[7];
uint32_t dword_77E604;
uint8_t unk_77E608[2];
uint16_t word_77E60A[2];
uint8_t padding_word_77E60A[4];
uint32_t dword_77E614;
uint32_t dword_77E618;
uint32_t dword_77E61C;
uint8_t padding_dword_77E61C[20];
uint32_t dword_77E634;
uint32_t dword_77E638;
uint32_t dword_77E63C;
uint8_t padding_dword_77E63C[4];
uint32_t dword_77E644;
uint32_t dword_77E648;
uint32_t dword_77E64C;
uint8_t padding_dword_77E64C[36];
uint32_t dword_77E674;
uint32_t dword_77E678;
uint32_t dword_77E67C;
uint8_t padding_dword_77E67C[20];
uint32_t dword_77E694;
uint32_t dword_77E698;
uint32_t dword_77E69C;
uint8_t padding_dword_77E69C[4];
uint32_t dword_77E6A4;
uint32_t dword_77E6A8;
uint32_t dword_77E6AC;
uint8_t padding_dword_77E6AC[4];
uint32_t dword_77E6B4;
uint32_t dword_77E6B8;
uint8_t padding_dword_77E6B8[1];
uint8_t byte_77E6BD[5];
uint32_t dword_77E6C2;
uint32_t dword_77E6C6;
uint32_t dword_77E6CA;
uint16_t word_77E6CE;
uint8_t padding_word_77E6CE[4];
uint32_t dword_77E6D4;
uint32_t dword_77E6D8;
uint32_t dword_77E6DC;
uint32_t dword_77E6E0;
uint32_t dword_77E6E4;
uint32_t dword_77E6E8;
uint32_t dword_77E6EC;
uint32_t dword_77E6F0;
uint32_t dword_77E6F4;
uint32_t dword_77E6F8;
uint32_t dword_77E6FC;
uint32_t dword_77E700;
uint32_t dword_77E704;
uint32_t dword_77E708;
uint32_t dword_77E70C;
uint32_t dword_77E710;
uint8_t unk_77E714[4];
uint8_t byte_77E718;
uint8_t byte_77E719;
uint8_t byte_77E71A;
uint16_t word_77E71C;
uint32_t dword_77E720;
uint32_t dword_77E724;
uint32_t dword_77E728;
uint32_t dword_77E72C;
uint32_t dword_77E730;
uint32_t dword_77E734;
uint32_t dword_77E738;
uint32_t dword_77E73C;
uint32_t dword_77E740;
uint32_t dword_77E744;
uint32_t dword_77E748;
uint32_t dword_77E74C;
uint32_t dword_77E750;
uint32_t dword_77E754;
uint32_t dword_77E758;
uint32_t dword_77E760;
uint32_t dword_77E764;
uint32_t dword_77E768;
uint32_t dword_77E76C;
uint8_t byte_77E770;
uint8_t byte_77E771;
uint32_t dword_77E778;
uint32_t dword_77E77C;
uint32_t dword_77E780;
uint32_t dword_77E784;
uint8_t padding_dword_77E784[4];
uint16_t word_77E78C;
uint16_t word_77E78E[4];
uint16_t word_77E79C;
uint16_t word_77E79E[10];
uint16_t word_77E7C4;
uint16_t word_77E7C6;
uint16_t word_77E7C8;
uint16_t word_77E7CA;
uint16_t word_77E7CC;
uint16_t word_77E7CE[2];
uint8_t byte_77E7D4;
uint32_t dword_77E7D5;
uint8_t byte_77E7D9;
uint8_t byte_77E7DA;
uint32_t dword_77E7DC;
uint32_t dword_77E7E0;
uint8_t unk_77E7E4[2];
uint16_t word_77E7E6[3];
uint8_t padding_word_77E7E6[2];
uint32_t dword_77E7F2;
uint32_t dword_77E7F6;
uint16_t word_77E7FA;
uint16_t word_77E7FC;
uint8_t byte_77E7FE;
uint8_t byte_77E7FF;
uint8_t byte_77E800;
uint8_t byte_77E801;
uint8_t byte_77E802;
uint8_t unk_77E803[2];
uint8_t byte_77E805;
uint8_t byte_77E806;
uint8_t byte_77E807;
uint32_t dword_77E808;
uint32_t dword_77E80C;
uint32_t dword_77E810;
uint32_t dword_77E814;
uint8_t padding_dword_77E814[128];
uint32_t dword_77E898;
uint32_t dword_77E89C;
uint32_t dword_77E8A0;
uint32_t dword_77E8A4;
uint8_t padding_dword_77E8A4[32];
uint32_t dword_77E8C8;
uint32_t dword_77E8CC;
uint32_t dword_77E8D0;
uint32_t dword_77E8D4;
uint8_t padding_dword_77E8D4[32];
uint32_t dword_77E8F8;
uint8_t padding_dword_77E8F8[2];
uint8_t byte_77E8FE;
uint16_t word_77E900;
uint8_t padding_word_77E900[22];
uint16_t word_77E918;
uint16_t word_77E91A;
uint16_t word_77E91C;
uint16_t word_77E91E;
uint8_t padding_word_77E91E[24];
uint32_t dword_77E938;
uint32_t dword_77E93C;
uint32_t dword_77E940;
uint32_t dword_77E944;
uint32_t dword_77E948;
uint32_t dword_77E94C;
uint8_t byte_77E950;
uint8_t byte_77E951;
uint8_t byte_77E952;
uint8_t byte_77E953;
uint32_t dword_77E954;
uint32_t dword_77E958;
uint32_t dword_77E95C;
uint32_t dword_77E960;
uint32_t dword_77E964;
uint32_t dword_77E968;
uint32_t dword_77E96C;
uint32_t dword_77E970;
uint32_t dword_77E974;
uint32_t dword_77E978;
uint32_t dword_77E97C;
uint32_t dword_77E980;
uint32_t dword_77E984;
uint32_t dword_77E988;
uint32_t dword_77E98C;
uint32_t dword_77E990;
uint32_t dword_77E994;
uint32_t dword_77E998;
uint32_t dword_77E99C;
uint32_t dword_77E9A0;
uint8_t unk_77E9A8[4];
uint32_t dword_77E9AC;
uint8_t padding_dword_77E9AC[8];
uint32_t dword_77E9B8;
uint32_t dword_77E9BC;
uint32_t dword_77E9C0;
uint32_t dword_77E9C8;
uint32_t dword_77E9CC;
uint32_t dword_77E9D0;
uint32_t dword_77E9D8;
uint32_t dword_77E9DC;
uint32_t dword_77E9E0;
uint32_t dword_77E9E8;
uint32_t dword_77E9EC;
uint32_t dword_77E9F0;
uint32_t dword_77E9F8;
uint32_t dword_77EA00;
uint8_t padding_dword_77EA00[2];
uint32_t dword_77EA06;
uint16_t word_77EA0A;
uint16_t word_77EA0C;
uint32_t dword_77EA40;
uint32_t dword_77EA44;
uint32_t dword_77EA48;
uint8_t padding_dword_77EA48[2];
uint32_t dword_77EA4E;
uint32_t dword_77EA52;
uint32_t dword_77EA56;
uint32_t dword_77EA5A;
uint8_t byte_77EA5E;
uint8_t byte_77EA5F;
uint8_t byte_77EA60;
uint8_t byte_77EA61;
uint32_t dword_77EA70;
uint32_t dword_77EA74;
uint32_t dword_77EA78;
uint32_t dword_77EA7C;
uint16_t word_77EA80[2];
uint16_t word_77EA86;
uint16_t word_77EA88;
uint16_t word_77EA8A;
uint16_t word_77EA8C;
uint16_t word_77EA8E;
uint16_t word_77EA90;
uint16_t word_77EA92;
uint16_t word_77EA94;
uint16_t word_77EA96;
uint16_t word_77EA98;
uint16_t word_77EA9A;
uint16_t word_77EA9C[3];
uint16_t word_77EAA6[2];
uint16_t word_77EAAC;
uint16_t word_77EAAE;
uint16_t word_77EAB0;
uint16_t word_77EAB2;
uint16_t word_77EAB4;
uint16_t word_77EAB6;
uint8_t byte_77EAB8;
uint8_t byte_77EAB9;
uint32_t dword_77EABA;
uint8_t byte_77EABE;
uint8_t byte_77EABF;
uint8_t byte_77EAC0;
uint8_t byte_77EAC1;
uint8_t byte_77EAC2;
uint8_t byte_77EAC3;
uint8_t byte_77EAC4;
uint8_t byte_77EAC5;
uint8_t byte_77EAC6;
uint8_t unk_77EAC8[48];
uint8_t unk_77EAF8[36];
uint32_t dword_77EB1C;
uint32_t dword_77EB20;
uint32_t dword_77EB24;
uint8_t unk_77EB38[46];
uint32_t dword_77EB66;
uint32_t dword_77EB6A;
uint8_t unk_77EB70[8];
uint8_t unk_77EB78[8];
uint8_t unk_77EB80[8];
uint32_t dword_77EBA0;
uint32_t dword_77EBA4;
uint32_t dword_77EBA8;
uint32_t dword_77EBAC;
uint8_t byte_77EBB0;
uint8_t byte_77EBB1;
uint8_t byte_77EBB2;
uint32_t dword_77EBB4;
uint32_t dword_77EBB8;
uint32_t dword_77EBBC;
uint32_t dword_77EBC0;
uint32_t dword_77EBC4;
uint32_t dword_77EBC8;
uint32_t dword_77EBCC;
uint32_t dword_77EBD0;
uint32_t dword_77EBD4;
uint32_t dword_77EBD8;
uint32_t dword_77EBDC;
uint32_t dword_77EBE0;
uint32_t dword_77EBE4;
uint8_t padding_dword_77EBE4[16380];
uint32_t dword_782BE4;
uint32_t dword_782BE8;
uint32_t dword_782BEC;
uint32_t dword_782BF0;
uint8_t byte_782BF4;
uint8_t byte_782BF5;
uint8_t byte_782BF6;
uint8_t byte_782BF7;
uint32_t dword_782BF8;
uint32_t dword_782BFC;
uint32_t dword_782C00;
uint32_t dword_782C04;
uint32_t dword_782C08;
uint32_t dword_782C0C;
uint32_t dword_782C10;
uint8_t unk_782C14[12];
uint32_t dword_782C20;
uint8_t padding_dword_782C20[16];
uint8_t byte_782C34;
uint8_t byte_782C35;
uint16_t word_782C36[2];
uint8_t padding_word_782C36[4760];
uint16_t word_783ED4;
uint16_t word_783ED6[3];
uint8_t padding_word_783ED6[12276];
uint32_t dword_786ED4;
uint32_t dword_786ED8;
uint8_t padding_dword_786ED8[16];
uint8_t unk_786EEC[1240];
uint16_t word_7873C4;
uint16_t word_7873C6[3];
uint8_t padding_word_7873C6[756];
uint8_t byte_7876C4[493883];
uint8_t unk_7FFFFF;
uint8_t unk_800000[1795];
uint8_t unk_800703[253];
uint8_t unk_800800[6272];
uint8_t unk_802080[4000];
uint8_t unk_803020[8248];
uint8_t unk_805058[5136];
uint8_t unk_806468[7192];
uint8_t unk_808080[64];
uint8_t unk_8080C0[229184];
uint8_t unk_840000[171409];
uint8_t unk_869D91[121139];
uint32_t dword_8876CC;
uint32_t dword_8876D4;
uint32_t dword_8876D8;
uint32_t dword_8876EC;
uint32_t dword_8876F4;
uint32_t dword_8876F8;
uint32_t dword_88770C;
uint32_t dword_887714;
uint32_t dword_887718;
uint32_t dword_88772C;
uint32_t dword_887734;
uint32_t dword_887738;
uint32_t dword_887744;
uint32_t dword_887748;
uint32_t dword_88774C;
uint32_t dword_887750;
uint16_t word_887754;
uint16_t word_887756;
uint16_t word_887758;
uint16_t word_88775A;
uint16_t word_88775C;
uint16_t word_88775E;
uint16_t word_887760;
uint16_t word_887762;
uint16_t word_887764;
uint16_t word_887766;
uint16_t word_887768;
uint16_t word_88776A[6];
uint8_t unk_887780[108];
uint8_t byte_8877EC;
uint8_t byte_8877ED;
uint8_t byte_8877EE[46];
uint32_t dword_88781C;
uint32_t dword_887820;
uint8_t padding_dword_887820[16];
uint32_t dword_887834;
uint8_t padding_dword_887834[68];
uint32_t dword_88787C;
uint32_t dword_887880;
uint32_t dword_887884;
uint32_t dword_887888;
uint32_t dword_88788C;
uint32_t dword_887890;
uint16_t word_887894;
uint32_t dword_887898;
uint32_t dword_88789C;
uint8_t padding_dword_88789C[16];
uint8_t unk_8878B0[20];
uint8_t unk_8878C4[4];
uint8_t byte_8878C8[68];
uint8_t byte_88790C[256];
uint8_t byte_887A0C;
uint8_t byte_887A0D[39];
uint8_t byte_887A34;
uint8_t byte_887A35[19];
uint32_t dword_887A48;
uint8_t unk_887A50[65536];
uint32_t dword_897A50;
uint32_t dword_897A54;
uint32_t dword_897A58;
uint8_t padding_dword_897A58[180];
uint32_t dword_897B10;
uint8_t padding_dword_897B10[60];
uint32_t dword_897B54;
uint8_t padding_dword_897B54[56];
uint32_t dword_897B90;
uint32_t dword_897B94;
uint32_t dword_897B98;
uint32_t dword_897B9C;
uint32_t dword_897BA0;
uint16_t word_897BA4;
uint16_t word_897BA6[3];
uint16_t word_897BB0;
uint16_t word_897BB2;
uint16_t word_897BB4;
uint32_t dword_897BB8;
uint8_t byte_897BC0;
uint8_t byte_897BC1;
uint32_t dword_897BC4;
uint32_t dword_897BC8;
uint8_t unk_897BCC[16];
uint8_t unk_897BDC[16];
uint8_t unk_897BEC[256];
uint8_t unk_897CEC[16];
uint32_t dword_897CFC;
uint32_t dword_897D00;
uint8_t padding_dword_897D00[8];
uint8_t unk_897D0C[16];
uint8_t unk_897D1C[16];
uint32_t dword_897D2C;
uint8_t unk_897D30[1536];
uint32_t dword_898330;
uint32_t dword_898334;
uint32_t dword_898338;
uint8_t byte_898340;
uint32_t dword_898344;
uint8_t byte_898348;
uint8_t byte_898349[259];
uint32_t dword_89844C;
uint32_t dword_898450;
uint32_t dword_898454;
uint32_t dword_898458;
#pragma endregion

#pragma region variaveis iniciadas

char aMegamanExe[] = "MEGAMAN.EXE";
char aCapcomAvi[] = "CAPCOM.AVI";
char IconName[] = "ROCKMAN_ICON";
char WindowName[] = "Megaman";
char Caption[] = "Error";
char Text[] = "Please Insert Megaman CD-ROM.";

void* hWnd = NULL;

unsigned char byte_4A64AB[0x14] = {
    0, // Primeiro byte inicializado com 0
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 // 19 valores restantes
};


unsigned char byte_4A64FB[16] = {
    0,                   // Primeiro byte inicializado com 0
    0, 0, 0, 0,          // Quatro bytes inicializados com 0
    0x00, 0x00, 0x00, 0x80, // 0x80000000 em formato little-endian
    0x02, 0x00, 0x00, 0xE0, // 0xE0000002 em formato little-endian
    1, 0, 0               // Últimos bytes inicializados
};
char unk_557C2C[] = "";

#pragma endregion


#pragma region variaveis fakes


extern DWORD nWidth;
extern DWORD cy;
extern DWORD bMenu;
extern DWORD dword_530400;
extern DWORD dword_5303FC;
extern DWORD dword_530408;
extern DWORD dword_53040C;
extern DWORD dword_77EA74;
extern DWORD dword_77E738;
extern DWORD dbl_50A390;
extern DWORD flt_55BDB4;

// Protótipos das funções externas
void __InitRtns(int param);
void sub_4FABD3();
void* stackavail_() {

}
void sub_5022FA() {

}
void nullsub_6() {

}
void sub_502330() {

}

// Variáveis externas
void* dword_5581A8;  // Variável global desconhecida
void* dword_557C30;  // Variável global desconhecida
void* dword_557C34;  // Variável global desconhecida
char* lpCmdLine;     // Variável global representando o comando da linha de execução

// Protótipos das funções externas
void __InitRtns(int param);
void sub_4FABD3(void* var_8);
void* stackavail_();
void sub_5022FA(); // Nome original do Assembly (__GRO)
void nullsub_6();
void sub_502330();
void memset_() {

}
void __imp_GetModuleHandleA() {

}
// Variáveis externas
void* dword_5581A8; // Variável global desconhecida
void* dword_557C30; // Variável global desconhecida
void* dword_557C34; // Variável global desconhecida
char* lpCmdLine;    // Variável global representando o comando da linha de execução

void sub_4FA9A8() {
    printf("Mock: sub_4FA9A8 called.\n");
}

void sub_500909() {
    printf("Mock: sub_500909 called.\n");
}

int sub_4F0927() {
    printf("Mock: sub_4F0927 called.\n");
    return 1; // Valor padrão para retorno
}

void sub_4A650B() {
    printf("Mock: sub_4A650B called.\n");
}

void sub_4F9933() {
    printf("Mock: sub_4F9933 called.\n");
}

void sub_4F7BBA() {
    printf("Mock: sub_4F7BBA called.\n");
}

void sub_4A67C5() {
    printf("Mock: sub_4A67C5 called.\n");
}

void sub_4F84A5() {
    printf("Mock: sub_4F84A5 called.\n");
}

void sub_4F8674() {
    printf("Mock: sub_4F8674 called.\n");
}

void sub_4F9F7D() {
    printf("Mock: sub_4F9F7D called.\n");
}

void sub_4A66A4() {
    printf("Mock: sub_4A66A4 called.\n");
}

void sub_4A65EB() {
    printf("Mock: sub_4A65EB called.\n");
}

void sub_4D8F96() {
    printf("Mock: sub_4D8F96 called.\n");
}

void sub_4A0EF8() {
    printf("Mock: sub_4A0EF8 called.\n");
}

void sub_4A065A() {
    printf("Mock: sub_4A065A called.\n");
}

void sub_49E00B() {
    printf("Mock: sub_49E00B called.\n");
}

void sub_4F88FC() {
    printf("Mock: sub_4F88FC called.\n");
}

void sub_4F8895() {
    printf("Mock: sub_4F8895 called.\n");
}

void sub_4F88C4() {
    printf("Mock: sub_4F88C4 called.\n");
}

void sub_4F7680() {
    printf("Mock: sub_4F7680 called.\n");
}

void sub_4F85F2() {
    printf("Mock: sub_4F85F2 called.\n");
}

void sub_4F860C() {
    printf("Mock: sub_4F860C called.\n");
}

void sub_4EED08() {
    printf("Mock: sub_4EED08 called.\n");
}

void sub_4D89AF() {
    printf("Mock: sub_4D89AF called.\n");
}

void sub_4F8D91() {
    printf("Mock: sub_4F8D91 called.\n");
}

void sub_4F383A() {
    printf("Mock: sub_4F383A called.\n");
}

void sub_4A6A5E() {
    printf("Mock: sub_4A6A5E called.\n");
}

// Mocks para funções faltantes
void __init_stack_limits_() {
    printf("Mock: __init_stack_limits_ called.\n");
}

void __InitRtns(int param) {
    printf("Mock: __InitRtns called with param = %d.\n", param);
}

void sub_4FA998() {

}

void nullsub_4() {

}

void (*off_551FC4)(void) = sub_4FA998;
void (*off_552004)(void) = nullsub_4;


#pragma endregion




#pragma warning(push)
#pragma warning(disable: 4996) // Suprimir warnings de funções não seguras

void sub_4FABD3() {
    __asm {
        push ebx
        push ecx
        push esi
        push edi
        mov esi, eax // Copiando o valor de eax para esi
        mov edi, edx // Copiando o valor de edx para edi
    }
    HMODULE moduleHandle = GetModuleHandleA(NULL);

    __asm {
        mov ebx, moduleHandle
        mov edx, edi
        xor eax, eax
    }
    sub_4FA9A8();
    __asm {
        mov edx, offset unk_557C2C
    }
    ((void(*)(void))off_551FC4)();
    __init_stack_limits_();
    __asm {
        mov eax, esi
    }
    sub_500909();
    __InitRtns(0x21);
    ((void(*)(void))off_552004)();
    __InitRtns(0xFF);

    __asm {
        pop edi
        pop esi
        pop ecx
        pop ebx
        ret
    }
}

int __stdcall WinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance, LPSTR lpCmdLine, int nShowCmd) {
    WNDCLASSA WndClass = { 0 };
    MSG Msg = { 0 };
    RECT Rect = { 0 };

    DWORD ebp = 0; // Declaração movida para o início do bloco
    DWORD dwStyle;
    DWORD hInstanceLocal;

    __asm {
        push ebx
        push esi
        push edi
        push ebp
    }
    __asm {
        sub esp, 0xB4
    }

    memcpy(&WndClass, (void*)&byte_4A64AB, 0x14);

    __asm {
        mov[esp + 0x18], ebp
    }

    memcpy(&Rect, (void*)&byte_4A64FB, sizeof(Rect));

    if (sub_4F0927(aMegamanExe, aCapcomAvi) == 0) {
        MessageBoxA(NULL, Text, Caption, 0x10);
        goto loc_4A72BF;
    }

loc_4A6DC3:
    dwStyle = 0xCE0000;
    hInstanceLocal = (DWORD)hInstance;

    WndClass.hInstance = hInstance;
    WndClass.lpfnWndProc = (WNDPROC)sub_4A6A5E;
    WndClass.hIcon = LoadIconA(hInstance, (LPCSTR)IconName);
    WndClass.hCursor = LoadCursorA(NULL, MAKEINTRESOURCE(0x7F00));
    WndClass.hbrBackground = (HBRUSH)GetStockObject(4);
    WndClass.lpszClassName = (LPCSTR)WindowName;

    if (!RegisterClassA(&WndClass)) {
        return -1;
    }

    sub_4A650B();
    hWnd = CreateWindowExA(0, WindowName, WindowName, dwStyle, CW_USEDEFAULT, CW_USEDEFAULT,
        CW_USEDEFAULT, CW_USEDEFAULT, NULL, NULL, hInstance, NULL);
    ShowWindow(hWnd, 5);
    UpdateWindow(hWnd);

loc_4A72BF:
    return 1;

loc_4A72C4:
    __asm {
        add esp, 0xB4
    }
    return 0;
}

void sub_4FFB41() {
    __asm {
        push ebx
        push ecx
        push edx
        push ebp
        mov ebp, esp
        sub esp, 8 // Reserva espaço na pilha
    }

    __InitRtns(1); // Inicialização

    __asm {
        mov eax, dword ptr ds : [dword_5581A8] // Carrega dword_5581A8 em EAX
        add eax, 3
        and al, 0FCh
        xor edx, edx
        sub esp, eax // Ajusta ESP com base em EAX
        mov ecx, esp // ECX aponta para a nova posição da pilha
        mov ebx, dword ptr ds : [dword_5581A8] // Carrega dword_5581A8 em EBX
        mov eax, ecx
        call memset_ // Zera o espaço alocado
        mov eax, dword ptr ds : [dword_5581A8]
        mov edx, ecx
        mov dword ptr[ecx + 0F0h], eax // Configura a estrutura na memória
    }

    // Chama sub_4FABD3 com um ponteiro para var_8
    char var_8 = 0;
    sub_4FABD3(&var_8);

    __asm {
        mov ecx, dword ptr ds : [dword_557C30] // Carrega dword_557C30 em ECX
        add ecx, 3
        and cl, 0FCh
        call stackavail_ // Obtém o espaço restante na pilha
        cmp ecx, eax // Compara o espaço necessário com o disponível
        jnb no_stack_adjustment
        push ecx
        call sub_5022FA // Ajusta a pilha se necessário
        mov eax, dword ptr ds : [dword_557C30]
        add eax, 3
        and al, 0FCh
        sub esp, eax
        mov eax, esp
        jmp update_stack_pointer

        no_stack_adjustment :
        xor eax, eax

            update_stack_pointer :
        mov ebx, dword ptr ds : [dword_557C30]
            add eax, ebx
            mov dword ptr ds : [dword_557C34] , eax
    }

    nullsub_6(); // Função vazia (provavelmente um stub)

    __asm {
        push 0Ah            // nShowCmd
        mov edx, lpCmdLine  // Ponteiro para linha de comando
        push edx            // lpCmdLine
        push 0              // hPrevInstance
        push 0              // lpModuleName
        call dword ptr cs : __imp_GetModuleHandleA // Obtém o módulo do executável
        push eax            // hInstance
    }

    // Chama WinMain
    WinMain(0, 0, lpCmdLine, 10);

    // Chama sub_502330
    sub_502330();

    __asm {
        mov esp, ebp // Restaura a pilha
        pop ebp
        pop edx
        pop ecx
        pop ebx
        ret
    }
}




int main() {
    sub_4FFB41();
}

#pragma warning(pop)


