//<continuation number="20">
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


scene dm2240.nss_MAIN
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
	//#ev900�����P�l�̑��t=true;
	//#ev900�����t��=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm2250.nss";

$HALevel=2;

}


scene dm2240.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);

	PrintBG("��w�i", 30000);

	SoundPlay("@dm008",0,1,true);//����

	CreateColorEX("�G�F�����", 5000, "000000");
	CreateColorSPadd("�G�F��", 4000, "FFFFFF");
	CreateColorSP("�G�F��", 100, "000000");

	CreateSE("SE01","se�[��_����_�L�[��01");
	MusicStart("SE01",0,700,0,1100,null,false);

	FadeDelete("��w�i", 0, null, true);
	Wait(300);
	FadeDelete("�G�F��", 1000, null, true);

	Wait(300);

//�������u���o�F�����t�̗U�f�v

	CreateSE("SE01","se�l��_�S��_�ۓ�01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(300);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
�@�\�\�\�\�@Use it�@�\�\�\�\

</PRE>
	SetTextM();
	TypeBeginF(150);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorEX("�G�F��", 12000, "000000");
	Fade("�G�F��", 300, 1000, null, true);

	TemptationNoizSet("�G�������t�U�f������",1102);
	TemptationAobaSet("�G�������t�U�f",1100,Center,Middle,"cg/ev/ev900�����P�l�̑��t.jpg",1000,1000);

	CreateColorEX("�G�������t�U�f���B", 1110, "000000");
	DrawTransition("�G�������t�U�f���B", 0, 0, 500, 100, null, "cg/data/slide_05_00_0.png", true);

	$HALevel=0;
	Fade("�G�������t�U�f���B", 0, 1000, null, true);
	Fade("�G�������t�U�f", 0, 1000, null, true);
	TemptationNoizFade("�G�������t�U�f������",0,null,true);
	Position("@�G�������t�U�f", $TANx1, $TANy1);
	$HALevel=2;

	Wait(200);

	CreateSE("SE01","se�l��_����_�ɂ�01");
	MusicStart("SE01",0,700,0,1000,null,false);
	TemptationAobaIn("�G�F��");

	TemptationAobaOut(200,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
�@�\�\�\�\�@Use it&, use your power�@�\�\�\�\

</PRE>
	SetTextM();
	TypeBeginF(150);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	TemptationAobaSet("�G�������t�U�f",1100,-501,30,"cg/ev/l/ev900�����P�l�̑��t_l.jpg",2000,2000);

	Fade("�G�������t�U�f������", 0, 1000, null, true);
	Position("@�G�������t�U�f", $TANx1, $TANy1);
	CreateSE("SE01","se�l��_����_�ɂ�01");
	MusicStart("SE01",0,700,0,1000,null,false);
	TemptationAobaIn("�G�F��");
	TemptationAobaOut(200,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
�@�\�\�\�\�@Use it�@�\�\�\�\

</PRE>
	SetTextM();
	TypeBeginF(150);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	TemptationDelete("@�G�������t�U�f���B");
	FadeDelete("�G�F��", 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
&.&.&.&.&.

&.&.&.&.&.

&.&.&.The power&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	PrintGO("��w�i", 5000);

	CreateColorSPadd("�G�F��", 5000, "FFFFFF");
	OnBG(10,"bg301041_5_�v���`�i�W�F�C���ʂ�H�n02");
	FadeBG(0,true);

	CreateSE("SE01","se�[��_����_�L�[��01");//�������u�r�d�Fse�[��_����_�L�[��01�v
	MusicStart("SE01",0,700,0,1000,null,false);

	SetVolumeEX("@dm008", 4000, 450, null);

	FadeDelete("��w�i", 0, null, true);
	FadeDelete("�G�F��", 1000, null, true);

	Wait(300);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0019]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm22/4000010a01">
"&.&.&.Haah!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
Akushima approaches before my very eyes&.

{
	SetVolumeEX("@dm008", 0, 350, null);
	CreateSE("SE01","se�l��_�S��_�ۓ�01");
	MusicStart("SE01",0,700,0,1000,null,false);
}
&.&.&.The power&.

{
	SetVolumeEX("@dm008", 0, 250, null);
	CreateSE("SE01","se�l��_�S��_�ۓ�01");
	MusicStart("SE01",0,900,0,1000,null,false);
}
&.&.&.The power!

{
	SetVolumeEX("@dm008", 0, 150, null);
	CreateSE("SE01","se�l��_�S��_�ۓ�01");
	MusicStart("SE01",0,1100,0,1000,null,false);
}
I jump at Akushima and press my hand against his forehead&.

{
	SetVolumeEX("@dm008", 0, 0, null);
	CreateSE("SE01","se�l��_�S��_�ۓ�01");
	MusicStart("SE01",0,1300,0,1000,null,false);
}
I stared at his unfocused eyes&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�������u���o�F������A�܂�����Ȋ�����v

/*
	CreateWindowEX("�G��", 0, 77, 1024, 230, false);
	Zoom("�G��", 0, 1000, 0, null, true);
	CreateColorSP("�G��/�G�F��", 4000, "FFFFFF");
	CreateTextureSP("�G��/�G�d�u", 1100, Center, -70, "cg/ev/ev900�����t��.jpg");

	Zoom("�G��", 150, 1000, 1000, Dxl3, true);
	Wait(50);
	Fade("�G��/�G�F��", 150, 0, null, true);
*/

	CreateColorEXadd("�G�F��", 5000, "FFFFFF");

	CreateSE("SE01","se�[��_����_�̓N���A01");
	MusicStart("SE01",0,500,0,1500,null,false);
	SetVolumeEX("SE01", 2000, 1200, null);
	SetFrequency("SE01", 2000, 1470, null);
	Fade("�G�F��", 2000, 500, Axl2, true);
	SetVolumeEX("SE01", 600, 0, null);
	Wait(100);
	FadeDelete("�G�F��", 1000, null, true);


	Fw("fw���t_�ʏ�͍s�g_serious");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//���͔�����
//�y���t�z
<voice name="���t" class="���t" src="voice/dm22/4000020a01">
"&.&.&.Sink&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	DeleteFw();

//�������u�m�F�F�ǂ����������Ȃ񂾂낤�H�v

//���΂��[��ƌ����e���遨���E���e���r�m�C�Y�ɂȂ�B���̒��ɔ����t�̌��e���������牺�̂݁A��u�����f�遨�܂��e���r�m�C�Y���z���C�g�A�E�g�H
	CreateColorSPadd("�G�t���b�V����", 5000, "FFFFFF");
	Wait(30);

	CreateSE("SE11","se�[��_����_�m�C�Y01L");
	MusicStart("SE11",0,1200,0,1000,null,true);

	CreateTextureEX("�G������2", 2000, Center, Middle, "cg/data/noize_01_00_0.png");
	Zoom("�G������2", 0, 1100, 1100, null, true);
	FadeFFR2("�G������2", 0,1000, 10, 0, 0, 50,null, true);
	Fade("�G������2", 0, 1000, null, false);


	FadeDelete("�G�t���b�V����", 50, null, true);

	SetVolumeEX("SE11", 100, 10, null);

	CreateTextureSP("�G�d�u1000", 1900, -501, -383, "cg/ev/l/ev900�����P�l�̑��t_l.jpg");
	CreateTextureEXsub("�G������", 3000, Center, Middle, "cg/data/noize_01_00_0.png");
	Zoom("�G������", 0, 1100, 1100, null, true);
	FadeFFR2("�G������", 0,1000, 10, 0, 0, 50,null, true);
	Fade("�G������", 50, 1000, null, false);
	Delete("�G������2");

	SetVolumeEX("SE11", 0, 1200, null);
	Wait(100);

	CreateColorSPadd("�G�t���b�V����", 5000, "FFFFFF");
	Wait(30);
	Delete("�G������");
	Delete("�G�d�u1000");
	SetVolumeEX("SE11", 0, 0, null);
	FadeDelete("�G�t���b�V����", 50, null, true);

//	Wait(1000);

/*
	FadeDelete("�G��/�G�d�u", 500, null, true);
	Delete("�G��");
*/

//�����t�@�C��["dm2250.nss"]

}
