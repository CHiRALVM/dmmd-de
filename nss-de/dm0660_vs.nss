//<continuation number="40">
//<continuation number="">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}


scene dm0660_vs.nss_MAIN
{
//�������ݒ�
	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

//���I�����X�N���v�g�y�уt���O�ݒ�
	//���C�x���g�b�f
	#ev066�N���A�\�͔���=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm0660sl.nss";

}


scene dm0660_vs.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\


	PrintBG("��w�i", 30000);

	OnBG(10,"bg402031_1_��������֎~���H�ꕔ��01");
	FadeBG(0,true);

	SetVolumeEX("@dm009", 500, 1, null);

//���F�F�d����
	CreateColorSP("�G�F001", 1000, "Black");
	CreateColorSPmul("�G�F000", 1060, "BLUE");
	CreateColorSP("�G�F100", 1200, "Black");
	Fade("�G�F100", 0, 300, null, true);
	CreateColorSP("�G�F200", 2000, "Black");

	FadeDelete("��w�i", 200, null, true);



//==============================================
//���ȍ~�A����
//==============================================

//	CreateTextureSP("�G�d�u", 1100, Center, Middle, "cg/ev/ev066�N���A�\�͔���.jpg");
//coma_01=====================================================//

	CreateTextureEXadd("�G660_00", 1050, 258, -886, "cg/ef/efbg�{��̋Ɖ�.jpg");
	CreateTextureEXsub("�G660_01", 1300, 108, -73, "cg/ev/l/ev066�N���A�\�͔���_1�N���A_l.png");
	CreateTextureEXadd("�G660_02", 1450, 421, 295, "cg/ev/l/ev066�N���A�\�͔���_1��1_l.png");
	CreateTextureEXadd("�G660_03", 1450, 169, 339, "cg/ev/l/ev066�N���A�\�͔���_1��2_l.png");
	CreateTextureEX("�G660_04", 1450, 521, 15, "cg/ev/l/ev066�N���A�\�͔���_1�V���R�[_l.png");

	CreateTextureSP("�G660_10", 1100, 110, -74, "cg/ev/l/ev066�N���A�\�͔���_1�N���A_l.png");
	CreateTextureSPmul("�G660_11", 1101, 110, -74, "cg/ev/l/ev066�N���A�\�͔���_1�N���A_l.png");
	CreateTextureSPmul("�G660_12", 1101, 110, -74, "cg/ev/l/ev066�N���A�\�͔���_1�N���A_l.png");

//���F������
	CreateVOICEEX("�N���A�P","dm06/6000010a04","�N���A");
	CreateVOICEEX("�N���A�Q","dm06/6000040a04","�N���A");
//	CreateVOICEEX("�N���A�R","dm06/6000030a04","�N���A");

	CreateSE("SE01","se����_���]�^���[_�n��01aL");
	CreateSE("SE02","se��_���R_��01L");
	CreateSE("SE03","se�[��_�R�~�J��_�V���R�[01");

	Request("�G660_00",smoothing);
	Fade("�G660_00",0,500,null,true);
	SetVertex("�G660_00", center, bottom);
	Zoom("�G660_00", 0, 400, 10, null, true);

	Fade("�G660_01", 500, 800, null, true);

	Zoom("�G660_02", 0, 500, 1, null, true);
	Zoom("�G660_03", 0, 500, 1, null, true);

	MusicStart("SE01",2000,750,0,1000,null,true);


	Fade("�G�F200", 1500, 0, AxlAuto, false);
	DrawTransition("�G�F200", 1500, 1000, 0, 100, AxlAuto, "cg/data/circle_13_00_0.png", false);


	Fade("�G660_01", 3000, 400, null, true);
	Fade("�G660_01", 3000, 0, null, false);
	Fade("�G660_11", 3500, 0, null, false);
	Fade("�G660_12", 3500, 800, null, false);
	Fade("�G�F100", 3500, 0, null, true);

	MusicStart("SE02",2000,450,0,1000,null,true);
//���F������
	SetVolume("SE01", 500, 400, null);
	MusicStart("SE03",0,750,0,1000,null,false);

	DrawEffect("�G660_00", 50, "MiddleWave", 0, 50, null);

	Zoom("�G660_00", 3000, 300, 600, Dxl1, false);
	Fade("�G660_00", 1500, 800, null, false);
	Move("�G660_02", 1500, 470, 368, DxlAuto, false);
	Move("�G660_03", 1500, 77, 403, DxlAuto, false);
	Zoom("�G660_02", 50, 1050, 1050, Dxl1, false);
	Zoom("�G660_03", 50, 1050, 1050, Dxl1, false);
	Fade("�G660_02",100,1000,null,false);
	Fade("�G660_03",100,1000,null,false);
	Fade("�G660_04",500,1000,null,false);
	DrawTransition("�G660_04", 2000, 0, 1000, 100, null, "cg/data/slide_02_00_0.png", true);
	Move("�G660_02", 1000, 470, 358, DxlAuto, false);
	Move("�G660_03", 1000, 77, 393, DxlAuto, false);
	Fade("�G660_02",300,0,null,false);
	Fade("�G660_03",300,0,null,true);

	Wait(2000);

	SetVolume("SE01", 1000, 0, null);
	SetVolume("SE02", 1000, 0, null);


	DrawTransition("�G�F200", 0, 0, 1000, 100, AxlAuto, "cg/data/circle_13_00_0.png", true);

	Fade("�G�F200", 1000, 1000, null, true);
	Delete("�G660_*");
	Delete("�G�F000");
	Delete("�G�F100");

//coma_02=====================================================//

	CreateColorEX("�G�F300", 2000, "Black");


	CreateTextureSP("�G660_10", 1000, 180, -200, "cg/ev/x/ev066�N���A�\�͔���_2�N���A_x2.png");
	CreateTextureEXadd("�G660_11", 1000, 180, -167, "cg/ev/x/ev066�N���A�\�͔���_2�N���A_x2.png");
	CreateTextureEX("�G660_12", 1000, 216, -103, "cg/ev/l/ev066�N���A�\�͔���_2����_l.png");
	CreateTextureEX("�G660_13", 1500, 762, 80, "cg/ev/l/ev066�N���A�\�͔���_2�����c_l.png");
	CreateTextureEXadd("�G660_14", 1500, 762, 80, "cg/ev/l/ev066�N���A�\�͔���_2�����c_l.png");

	CreateMovie("�G���[�r�[1", 1400, 240, 162, true, true, "dx/mv0003�W����01_��.ngs");
	SetAlias("�G���[�r�[1","�G���[�r�[1");
	Request("�G���[�r�[1", AddRender);
	Zoom("�G���[�r�[1", 0, 3000, 3000, null, true);
	Fade("�G���[�r�[1", 0, 0, null, true);


	Request("�G���[�r�[1", Smoothing);
	Request("�G660_12", Smoothing);
	Request("�G660_13", Smoothing);

	Zoom("�G660_12", 0, 1450, 1450, null, true);
	Zoom("�G660_13", 0, 1500, 1500, null, true);

	Zoom("�G660_11", 0, 750, 750, null, true);
	SetBlur("�G660_11", true, 3, 600, 100, false);

	Zoom("�G660_10", 0, 750, 750, null, true);

	CreateSE("SE01","se�l��_����_�i�߂�01");
	CreateSE("SE02","se�퓬_����_������01");

	MusicStart("SE01",0,500,0,1000,null,false);
	Fade("�G�F200", 500, 0, null, false);
	Move("�G660_10", 2500, 180, -167, DxlAuto, false);

	Wait(2000);

	//MusicStart("�N���A�P",0,1000,0,1000,null,false);
	Request("�N���A�P", Play);
	SetVolume("�N���A�P", 0, 1000, null);
	Request("�N���A�P", Disused);

	Wait(1000);

	SetVolume("SE01", 300, 0, null);
	MusicStart("SE02",0,800,0,1000,null,false);
	Fade("�G660_11", 0, 1000, null, true);
	Fade("�G660_13", 0, 1000, Dxl1, false);
	Fade("�G660_14", 0, 1000, Dxl1, false);
	Fade("�G���[�r�[1", 100, 1000, null, false);
	Zoom("�G���[�r�[1", 1000, 3500, 3500, null, false);
	Zoom("�G660_10", 150, 1000, 1000, Dxl2, false);
	Zoom("�G660_11", 300, 5000, 5000, Dxl1, false);
	Zoom("�G660_12", 150, 1550, 1550, null, false);
	Zoom("�G660_14", 200, 3000, 3000, null, false);
	Fade("�G660_12", 150, 1000, Dxl1, false);
	Fade("�G660_14", 150, 0, Dxl1, false);
	Shake("�G660_10", 300, 5, 10, 0, 0, 1000, null, false);
	Shake("�G660_12", 300, 10, 3, 0, 0, 800, null, false);
	Fade("�G660_13", 100, 1000, Dxl1, false);
	Fade("�G660_11", 200, 0, Dxl1, true);
	Fade("�G���[�r�[1", 200, 0, null, false);


	WaitKey(3000);

	Fade("�G�F300", 0, 1000, null, false);
	DrawTransition("�G�F300", 400, 0, 1000, 200, Dxl1, "cg/data/slide_03_01_0.png", true);

	Delete("@�G���[�r�[1");
	Delete("@�G660_*");
	Delete("�G�F200");

//coma_03=====================================================//

	CreateWindow("�G��", 150, 0, 100, 1024, 376, false);
	SetAlias("�G��","�G��");
	CreateTextureSP("�G��/�G660_20", 1100, 0, 100, "cg/ev/l/ev066�N���A�\�͔���_3�w�i_l.png");//��ԉ�
	CreateTextureSP("�G��/�G660_21", 1100, 335, 160, "cg/ev/l/ev066�N���A�\�͔���_3�����q�l2_l.png");//��ԉ�
	CreateTextureSP("�G��/�G660_22", 1100, 672, 70, "cg/ev/l/ev066�N���A�\�͔���_3�����q�l1_l.png");//��Ԏ�
	CreateTextureSP("�G��/�G660_23", 1100, 0, 68, "cg/ev/l/ev066�N���A�\�͔���_3�����q�l3_l.png");//��O
	CreateTextureSP("�G��/�G660_24", 1100, -2, -59, "cg/ev/l/ev066�N���A�\�͔���_3�I_l.png");//��O
	CreateTextureSP("�G��/�G660_30", 1100, 0, -183, "cg/mask/ci���C��_00_00z.png");
	CreateTextureSP("�G��/�G660_31", 1100, 0, 185, "cg/mask/ci���C��_00_00z.png");

	CreateSE("SE10","se�퓬_����_����01");

	Request("�G��/�G660_2*", Smoothing);

	Move("�G��/�G660_21", 0, @0, 500, null, false);
	Move("�G��/�G660_22", 0, 1050, @0, null, false);
	Move("�G��/�G660_23", 0, -500, @0, null, true);

	Zoom("�G��", 0, 1000, 0, null, true);
	Move("�G��/�G660_30", 0, @0, 0, null, true);
	Move("�G��/�G660_31", 0, @0, 0, null, true);

	Fade("�G��/�G660_24", 0, 0, null, true);

	Fade("�G�F300", 0, 0, null, true);
	DrawTransition("�G�F300", 0, 0, 0, 50, null, "cg/data/circle_01_00_0.png", true);

	Move("�G��/�G660_30", 200, @0, -183, null, false);
	Move("�G��/�G660_31", 200, @0, 185, null, false);
	Zoom("�G��", 200, 1000, 1000, null, false);

	Wait(100);

	MusicStart("SE10",0,1000,0,1000,null,false);
	Move("�G��/�G660_23", 75, 0, @0, Dxl1, true);

	Move("�G��/�G660_22", 75, 672, @0, Dxl1, true);

	Shake("�G��/�G660_24", 300, 4, 20, 0, 0, 500, Dxl1, false);
	Fade("�G��/�G660_24", 300, 1000, null, false);
	Move("�G��/�G660_21", 75, @0, 160, Dxl1, true);

	WaitKey(1000);

	CreateSE("SE01","se�퓬_����_���؂荂02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Fade("�G�F300", 0, 1000, null, false);
	DrawTransition("�G�F300", 300, 0, 1000, 50, null, "cg/data/circle_01_00_0.png", true);

	Delete("@�G��");
	Delete("@�G��/�G660_*");
	Delete("@�G��");

//coma_04=====================================================//

	CreateColorSP("�G�F200", 1600, "Black");


	CreateTextureSP("�G660_1000", 1500, -85, -529, "cg/ev/l/ev066�N���A�\�͔���_l.jpg");
	CreateTextureSP("�G660_1001", 1450, 0, -354, "cg/ev/m/ev066�N���A�\�͔���_m.jpg");

	CreateTextureSP("�G660_10", 1800, Center, Middle, "cg/ev/l/ev066�N���A�\�͔���_4�N���A_l.png");
	Move("�G660_10", 0, 715, -187, null, true);

	CreateTextureSP("�G660_20", 1700, Center, Middle, "cg/ev/l/ev066�N���A�\�͔���_4�����q�l_l.png");
	Request("�G660_20", Smoothing);

	CreateSE("SE01","se�[��_�Ō�_�M���O�q�b�g01");


	Move("�G660_20", 0, 422, 14, null, true);

	CreateTextureSP("�G660_30", 1900, 449, 37, "cg/ev/l/ev066�N���A�\�͔���_4�|�R�b_l.png");

//���F�����ؓ�
	//MusicStart("�N���A�Q",0,1000,0,1000,null,false);
	Request("�N���A�Q", Play);
	SetVolume("�N���A�Q", 0, 1000, null);
	Request("�N���A�Q", Disused);

	MusicStart("SE01",0,1000,0,1000,null,false);

	Fade("�G�F300", 300, 0, null, false);

	Move("�G660_10", 150, 536, -62, Dxl1, false);
	Shake("�G660_20", 200, 10, 5, 0, 0, 500, null, false);
	Move("�G660_20", 4000, -69, -69, DxlAuto, true);

//	Wait(500);

	Fade("�G�F200", 1000, 0, null, true);


	Delete("�G660_10");
	Delete("�G660_20");
	Delete("�G660_30");

	Move("�G660_1000", 400, @-200, @-20, null, false);
	Zoom("�G660_1000", 400, 750, 750, null, false);
	Fade("�G660_1000", 300, 0, null, true);

	Wait(1000);

//���F���摜��`�ʒu
	CreateTextureEX("�G�d�u�P", 5000, Center, -50, "cg/ev/ev066�N���A�\�͔���.jpg");
	Fade("�G�d�u�P",300,1000,null,true);

	Delete("�G660_*");
	Delete("�G�F001");
	Delete("�G�F200");
	Delete("�G�F300");

/*================================================================
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm06/6000010a04">
"Please&.&.&."

//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm06/6000020a04">
"Stop&.&.&."

//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm06/6000030a04">
"With the violence!"

//�i���ʈėp�F���o�ɍ��킹�čD���ȕ����g���Ă��������j
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm06/6000040a04">
"Please stooooop!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);
================================================================*/


//���r�d�F�ڂ���
	//CreateSE("SE01","�r�d�_�~�[");//�������u�r�d�Fse�[��_�Ō�_�M���O�q�b�g01�v
//	MusicStart("SE01",0,700,0,1000,null,false);
	CreateSE("SE01","se�l��_�Ռ�_�]�|01");
	MusicStart("SE01",0,700,0,1000,null,false);

	SetBacklog("�u�\�͂́I�v", "voice/dm06/6000010a04", �N���A);
	SetBacklog("�u��߂Ă������[�[�[���I�I�v", "voice/dm06/6000040a04", �N���A);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
The black-clothed man ate Clear's punch and fell down to 
the ground&.


{	SetVolumeEX("@dm009", 500, 450, null);
	FadeDelete("�G�d�u�P", 300, null, true);}
&.&.&.&.&.

&.&.&.Well&, that's how it's going to be&.

{
	SoundPlay("@dm009",0,450,true);
}
These guys are kind of weird&.

None of them have said anything since we came in&.

All they've done is pursue and attack us with blank 
expressions the whole time&.

And the one I just saw had doll-like eyes&.&.&.

All their concern turned to the other way&, I saw Koujaku 
fighting with a hoard of those black-clothed goons&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����t�@�C��["dm0660sl.nss"]

}
