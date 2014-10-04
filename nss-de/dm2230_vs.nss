//<continuation number="320">
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


scene dm2230_vs.nss_MAIN
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
	#�C�x���g�t�@�C����=true;
	#bg301041_5_�v���`�i�W�F�C���ʂ�H�n02=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm2240.nss";

}


scene dm2230_vs.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

//���F�a�f�l��
	SoundPlay("@dm008",0,450,true);

	OnBG(10,"bg302051_5_�O���b�^�[�O�ʂ�");
	FadeBG(0,true);

	FadeDelete("��w�i", 0, null, true);


	CreateSE("SE01","se�l��_����_����01");
	MusicStart("SE01",0,700,0,900,null,false);

	CreateSE("SE02","se�l��_����_����01");
	MusicStart("SE02",0,700,0,800,null,false);

	CreateSE("SE11","se�l��_����_����03����L");//�������u�r�d�Fse�l��_����_����03����L�v
	MusicStart("SE11",0,500,0,600,null,true);

	CreateSE("SE12","se�l��_����_����03����L");
	MusicStart("SE12",0,500,0,700,null,true);

	CreateColorSP("�G����", 5000, "Black");
	DrawTransition("�G����", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	OnBG(10,"bg301031_5_�v���`�i�W�F�C���ʂ�H�n01");
	FadeBG(0,true);

	DrawTransition("�G����", 150, 1000, 0, 100, null, "cg/data/slide_01_03_1.png", true);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
We escape into a back alley&, an area small and dark 
compared to the dazzling Main Street&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_����01");
	MusicStart("SE01",0,700,0,900,null,false);

	CreateSE("SE02","se�l��_����_����01");
	MusicStart("SE02",0,700,0,800,null,false);

	SetVolumeEX("SE1*", 3000, 0, null);

	DrawTransition("�G����", 150, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);

	OnBG(10,"bg301021_5_�v���`�i�W�F�C�����ʂ�2�Q�[�Z��");
	FadeBG(0,true);

	DrawTransition("�G����", 150, 1000, 0, 100, null, "cg/data/slide_01_01_0.png", true);

	Wait(200);

	DrawTransition("�G����", 150, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	OnBG(10,"bg301011_5_�v���`�i�W�F�C����ʂ�2�Q�[�Z��");
	FadeBG(0,true);

	DrawTransition("�G����", 150, 1000, 0, 100, null, "cg/data/slide_01_01_1.png", true);

	Wait(200);

	DrawTransition("�G����", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	OnBG(10,"bg301041_5_�v���`�i�W�F�C���ʂ�H�n02");
	FadeBG(0,true);

	DrawTransition("�G����", 150, 1000, 0, 100, null, "cg/data/circle_01_00_1.png", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
I can't tell if it's the police or the yakuza&, but 
someone's following us&.

{
	SetVolumeEX("SE*", 2000, 0, null);
}
We make countless left turns&, and eventually we don't hear the footsteps anymore&.

Did we shake them off&.&.&.?

We stop running and look over our shoulders&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�������Ƒ��t�����̑O�ɗ����ǂ��鈫��
	CreateSE("SE01","se�l��_����_���02");//�������u�r�d�Fse�l��_����_���02�v
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0019]
//���n�C�p�[
//�y�����z
<voice name="����" class="����" src="voice/dm22/3000010b08">
"WAIIIIIIIIIIITTT!!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE03","se�l��_����_���01");
	MusicStart("SE03",0,700,0,900,null,false);
	CreateSE("SE02","se�l��_����_���01");
	MusicStart("SE02",0,700,0,800,null,false);

//���Q�Ăė����~�܂鑓�t�ƃm�C�Y

	Fw("fw���t_�ʏ�_rage");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm22/3000020a01">
"Huh!?"

{	Fw("fw�m�C�Y_�ʏ�_angry");}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm22/3000030a03">
"!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�������u���F�A�b�v�ŁB�V���G�b�g����o���Ƀp�����Ċ�A�b�v�݂����ȁv

	CreatePlainSP("�G��", 5000);

	CreateTextureSP("�G�w�i100", 1000, Center, Middle, "cg/bg/bg301041_5_�v���`�i�W�F�C���ʂ�H�n02.jpg");
	Zoom("�G�w�i100", 0, 1500, 1500, null, true);
	SetShade("�G�w�i100", MEDIUM);

	CreateTextureEX("�Gst100", 1200, -50, -100, "cg/st/x/st����_�ʏ�n�C�p�[_laugh_x.png");

	CreateStencil("�}�X�N�P",1500,-50,-426,128,"cg/st/x/st����_�ʏ�n�C�p�[_laugh_x.png",false);
	SetAlias("�}�X�N�P","�}�X�N�P");
	CreateColor("�}�X�N�P/�F�P", 1500, 0, 0, 1024, 576, "BLACK");
	SetAlias("�}�X�N�P/�F�P","�}�X�N�P/�F�P");

//	DrawTransition("�}�X�N�P/�F�P", 0, 0, 750, 800, null, "cg/data/slide_02_00_0.png", true);
	Fade("�}�X�N�P/�F�P", 0, 1000, null, true);

	FadeDelete("�G��", 1000, null, true);

	Move("�G�w�i100", 2000, @0, 141, AxlDxl, false);
	Move("�}�X�N�P", 2000, @0, -100, AxlDxl, true);

	Wait(100);

	Fade("�Gst100", 100, 1000, Axl1, false);

	Fade("�}�X�N�P/�F�P", 2000, 0, Axl1, false);
	DrawTransition("�}�X�N�P/�F�P", 2000, 1000, 0, 800, Axl1, "cg/data/slide_02_00_0.png", true);

	Delete("�}�X�N�P/�F�P");
	Delete("�}�X�N�P");

//	St("C",740, @0,@0,"st����_�ʏ�n�C�p�[_normal");
//	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
Someone jumps out in front of us&.

When I see his face&, I can only stand there&, shocked still&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);
	Delete("�G�w�i100");
	Delete("�Gst100");

	St("C",740, @0,@0,"st����_�ʏ�n�C�p�[_laugh");
	FadeSt("C",200,true);
	FadeDelete("�G��",300,null,true);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0023]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm22/3000040a01">
"Akushima!?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0024]
//���n�C�p�[
//�y�����z
<voice name="����" class="����" src="voice/dm22/3000050b08">
"YOU BASTAAAAARDS&, YOU'RE WAAAANTEEEEED!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_rage");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm22/3000060a01">
"Why are you here&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
//���n�C�p�[
//�y�����z
<voice name="����" class="����" src="voice/dm22/3000070b08">
"I transferred to Platinum Jail JUST TO DEAL WITH YOU DAMN
 TERRORIIIISTS&, HAHAHAHAHAHAHA!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
He's so persistant&.&.&.
But he seeems a little off&.

He's always been a crazy old coot&, but now his smile is 
uncannily wide and his eyes aren't focused&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0034]
//���n�C�p�[
//�y�����z
<voice name="����" class="����" src="voice/dm22/3000080b08">
"Time to KILL THE CRIMINAAALS!!!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

//���F���W����
	CreateTextureSP("�G�w�i100", 1000, Center, 70, "cg/bg/bg301041_5_�v���`�i�W�F�C���ʂ�H�n02.jpg");
	Zoom("�G�w�i100", 0, 1500, 1500, null, true);
	SetShade("�G�w�i100", MEDIUM);

	CreateTextureSP("�Gst100", 1200, 0, InBottom, "cg/fu/fu����_�ʏ�n�C�p�[_laugh.png");
	CreateTextureEX("�Gst200", 1200, Center, InBottom, "cg/fu/fu����_�퓬�n�C�p�[_normal.png");
	Move("�Gst100", 300, 62, @0, Dxl1, false);

	FadeDelete("�G��", 300, null, true);

	CreateSE("SE01","se�퓬_���K�C_�\����01");//�������u�r�d�Fse�퓬_���K�C_�\����01�v
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("�Gst200", 250, 1000, Dxl1, false);
	Fade("�Gst100", 250, 0, null, true);

{	St("C",740, @0,@0,"st����_�퓬�n�C�p�[_normal");
	FadeSt("C",200,true);}

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0035]
Akushima opens up his arms wide to the sky&, pointing 
something at us&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
What is that&.&.&.?
It looks like a giant&, modded megaphone&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSEEX("SE01","se�퓬_���K�C_�`���[�W01");

//���F�}�N������
	HyperAkSet(1250);

	MusicStart("SE01",0,700,0,1000,null,true);

//���F��ŐF�ύX
//	CreateColorEXmul("�G�F��", 4000, CC0000);
//	Fade("�G�F��", 150, 1000, null, true);
//	Wait(300);
//	DrawTransition("�G�F��", 300, 1000, 0, 100, Dxl1, "cg/data/circle_03_00_0.png", true);

//���L���C�B�B�B�B���ȏ[�U�����d�C�����ˉ�

	Fw("fw�m�C�Y_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm22/3000090a03">
"-!"

{	Fw("fw���t_�ʏ�_rage");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm22/3000100a01">
"!!!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	CreatePlainSP("�G��", 5000);
	DeleteAllSt(0,true);

	HyperAkDelete();
	Delete("�Gst100");
	Delete("�Gst200");
	Delete("�G�w�i100");
	Delete("�G�F��");

	FadeDelete("�G��",300,null,true);

	CreateSE("SE01","se�l��_�Ռ�_�@��02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 200, 15, 0, 0, 0, 500, null, true);
	Delete("�G��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0044]
Suddenly&, Noiz pushes me down&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//���F�䎌���ύX�\��yfw���t_�ʏ�_shock2�z
	Fw("fw���t_�ʏ�_shout");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0049]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm22/3000110a01">
"What're&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	DeleteFw();

	CreateTextureEX("�G�w�i200", 1000, Center, Middle, "cg/ef/efx04�r�[��_���K�CH01_s.jpg");
	Request("�G�w�i200",Smoothing);
	Zoom("�G�w�i200", 0, 1450, 1450, null, true);
	CreateTextureEXadd("�G�w�i300", 1000, Center, Middle, "cg/ef/efx04�r�[��_���K�CH01_s.jpg");
	Request("�G�w�i300",Smoothing);
	Zoom("�G�w�i300", 0, 1450, 1450, null, true);
	SetVertex("�G�w�i200", 266, 304);
	SetVertex("�G�w�i300", 266, 304);

	CreateColorEXadd("�G�F��", 5000, "White");


	CreateSE("SE01","se�퓬_���K�C_����01");//�������u�r�d�Fse�퓬_���K�C_����01�v
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("�G�w�i300", 300, -1500, 800, Dxl1, false);
	Move("�G�w�i200", 300, -1500, 800, Dxl1, false);
	Zoom("�G�w�i200", 250, 5000, 5000, Dxl1, false);
	Zoom("�G�w�i300", 250, 5000, 5000, Dxl1, false);
	Fade("�G�w�i200", 100, 1000, null, false);
	Fade("�G�w�i300", 150, 1000, null, true);
	Fade("�G�F��", 200, 1000, null, true);
	Delete("�G�w�i200");
	Delete("�G�w�i300");
	Fade("�G�F��", 200, 0, null, true);

//	CreateTextureEX("�G������", 1100, Center, Middle, "cg/ef/efx04�r�[��_���K�CH01.jpg");
//	FadeFR2("�G������",0,1000,150,0,0,50,null, true);
	DeleteAllSt(0,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
Akushima's megaphone is charging with bolts of electricity&,and a blaze had just missed my head&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorEXadd("�G�F��", 4000, FFFFFF);
	Wait(30);
	Delete("�G������");
	CreateColorEXadd("�G�F��", 3000, FFFF00);

	CreateSE("SE01","se�퓬_�Ռ�_�j��01");//�������u�r�d�Fse�퓬_�Ռ�_�j��01�v

	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("�G�F��", 0, 1000, null, false);
	DrawTransition("�G�F��", 200, 0, 1000, 50, Dxl1, "cg/data/slide_04_00_1.png", false);
	Fade("�G�F��", 300, 1000, null, false);
	DrawTransition("�G�F��", 300, 100, 1000, 50, Axl1, "cg/data/slide_04_00_1.png", true);
//	FadeDelete("�G�F��", 500, null, true);
	CreateTextureSP("�G�w�i200", 1000, Center, Middle, "cg/bg/bg301041_5_�v���`�i�W�F�C���ʂ�H�n02.jpg");
	Delete("�G�F��");
	Shake("�G�w�i200", 300, 1, 2, 0, 0, 1000, Dxl1, false);
	FadeDelete("�G�F��", 200, null, true);
	FadeDelete("�G�w�i200",200,null,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
What was that just now&.&.&.!?

When I try to get up and turn my head around&, I see the 
bolt had completely blasted the wall&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//���d�C�����ǂɓ������Đ���ȉ��𗧂Ăď���

	Fw("fw�m�C�Y_�ʏ�_angry2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0053]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm22/3000120a03">
"That's definitely bad news&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_angry2");
	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0054]
Noiz and I get up from the ground&, eyes centered on 
Akushima&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0055]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm22/3000130a03">
"He's trouble&. We gotta deal with him&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0056]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm22/3000140a01">
"Can we even do that? He's got that weird weapon&."

{	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_angry");
	FadeSt("C",0,true);}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm22/3000150a03">
"We have to&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	Fw("fw����_�퓬�n�C�p�[_laugh");}

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//���n�C�p�[
//�y�����z
<voice name="����" class="����" src="voice/dm22/3000160b08">
"DIIIIIIIEEEEEEEEEEEEEE!!!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//���L���C�B�B�B�B���ȏ[�U�����d�C�����ˉ�
	CreateSEEX("SE01","se�퓬_���K�C_�`���[�W01");
	MusicStart("SE01",0,700,0,1000,null,true);
//���F�F������
	CreateColorEXmul("�G�F��", 4000, "YELLOW");
	Fade("�G�F��", 150, 1000, null, true);
	Wait(300);
	FadeDelete("�G�F��", 300, null, true);

{	Fw("fw���t_�ʏ�_rage");}

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0062]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm22/3000170a01">
"Whoa&, this again&.&.&.!"

{
	DeleteFw();
	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_pinch");
	FadeSt("C",200,true);
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm22/3000180a03">
"Guh-!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��02");
	MusicStart("SE01",0,600,0,1000,null,false);

	CreateSE("SE02","se�l��_����_�ߎC��01");
	MusicStart("SE02",0,700,0,1000,null,false);

	DeleteAllSt(200,true);

	CreateTextureEX("�G�w�i200", 1000, Center, Middle, "cg/ef/efx04�r�[��_���K�CH01_s.jpg");
	Request("�G�w�i200",Smoothing);
	Zoom("�G�w�i200", 0, 1450, 1450, null, true);
	CreateTextureEXadd("�G�w�i300", 1000, Center, Middle, "cg/ef/efx04�r�[��_���K�CH01_s.jpg");
	Request("�G�w�i300",Smoothing);
	Zoom("�G�w�i300", 0, 1450, 1450, null, true);
	SetVertex("�G�w�i200", 266, 304);
	SetVertex("�G�w�i300", 266, 304);

	CreateColorEXadd("�G�F��", 5000, "White");


	CreateSE("SE01","se�퓬_���K�C_����01");//�������u�r�d�Fse�퓬_���K�C_����01�v
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("�G�w�i300", 300, -1500, 800, Dxl1, false);
	Move("�G�w�i200", 300, -1500, 800, Dxl1, false);
	Zoom("�G�w�i200", 250, 5000, 5000, Dxl1, false);
	Zoom("�G�w�i300", 250, 5000, 5000, Dxl1, false);
	Fade("�G�w�i200", 100, 1000, null, false);
	Fade("�G�w�i300", 150, 1000, null, true);
	Fade("�G�F��", 200, 1000, null, true);
	DeleteAllSt(0,true);
	Delete("�G�w�i200");
	Delete("�G�w�i300");
	Fade("�G�F��", 200, 0, null, true);

//	Wait(100);

	CreateColorEXadd("�G�F��", 4000, FFFFFF);
	Wait(30);
	Delete("�G������");
	CreateColorEXadd("�G�F��", 3000, FFFF00);

	CreateSE("SE01","se�퓬_�Ռ�_�j��01");//�������u�r�d�Fse�퓬_�Ռ�_�j��01�v

	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("�G�F��", 0, 1000, null, false);
	DrawTransition("�G�F��", 200, 0, 1000, 50, Dxl1, "cg/data/slide_04_00_1.png", false);
	Fade("�G�F��", 300, 1000, null, false);
	DrawTransition("�G�F��", 300, 100, 1000, 50, Axl1, "cg/data/slide_04_00_1.png", true);
//	FadeDelete("�G�F��", 500, null, true);
	CreateTextureSP("�G�w�i200", 1000, Center, Middle, "cg/bg/bg301041_5_�v���`�i�W�F�C���ʂ�H�n02.jpg");
	Delete("�G�F��");
	Shake("�G�w�i200", 300, 1, 2, 0, 0, 1000, Dxl1, false);
	FadeDelete("�G�F��", 200, null, true);
	FadeDelete("�G�w�i200",200,null,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0069]
More bolts launch at us&, and we dodge each one&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"st����_�퓬�n�C�p�[_normal");
	FadeSt("C",200,true);}

//���r�d�F�d�C�����ǂɓ������Đ���ȉ��𗧂Ăď���
	CreateSEEX("SE01","se�퓬_���K�C_�`���[�W01");
	MusicStart("SE01",0,700,0,1000,null,true);
//���F�F������
	CreateColorEXmul("�G�F��", 4000, "YELLOW");
	Fade("�G�F��", 150, 1000, null, true);
	Wait(300);
	DrawTransition("�G�F��", 300, 1000, 0, 100, Dxl1, "cg/data/circle_03_00_0.png", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//���n�C�p�[
//�y�����z
<voice name="����" class="����" src="voice/dm22/3000190b08">
"YOU'RE NOT GETTING AWAAAAAYYYYYYYYYYY!!!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//���r�d�F�L���C�B�B�B�B���ȏ[�U�����d�C�����ˉ�

{	Fw("fw���t_�ʏ�_rage");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm22/3000200a01">
"Are you serious!?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�퓬_���K�C_����01");//�������u�r�d�Fse�퓬_���K�C_����01�v
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureSP("�G�����P", 1100, Center, Middle, "cg/ef/efx04�r�[��_���K�CH01_s.jpg");
	Request("�G�����P",Smoothing);
	Zoom("�G�����P", 0, 1500, 1500, null, true);
	DeleteAllSt(0,true);

	FadeFR2("�G�����P",0,1000,150,0,0,50,null, true);

	Wait(50);

	CreateSE("SE01","se�퓬_���K�C_����01");//�������u�r�d�Fse�퓬_���K�C_����01�v
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureSP("�G�����S", 1100, Center, -50, "cg/ef/efx04�r�[��_���K�CH02_s.jpg");
	Request("�G�����S",Smoothing);
	Rotate("�G�����S", 0, 0, 0, 90, null,true);
	Zoom("�G�����S", 0, 2000, 2000, null, true);

	FadeFR2("�G�����S",0,1000,150,0,0,50,null, true);

	Wait(50);

	CreateSE("SE01","se�퓬_���K�C_����01");//�������u�r�d�Fse�퓬_���K�C_����01�v
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureSP("�G�����Q", 1100, Center, Middle, "cg/ef/efx04�r�[��_���K�CH01_s.jpg");
	Request("�G�����Q",Smoothing);
	Rotate("�G�����Q", 0, 0, 180, @0, null,true);
	Zoom("�G�����Q", 0, 1500, 1500, null, true);

	FadeFR2("�G�����Q",0,1000,100,0,0,50,null, true);

	Wait(50);

	CreateSE("SE01","se�퓬_���K�C_����01");//�������u�r�d�Fse�퓬_���K�C_����01�v
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureSP("�G�����R", 1100, Center, -104, "cg/ef/efx04�r�[��_���K�CH02_s.jpg");
	Request("�G�����R",Smoothing);
//	Rotate("�G�����R", 0, 0, 180, @0, null,true);
	Zoom("�G�����R", 0, 2000, 2000, null, true);

	Zoom("�G�����R", 150, 1500, 1500, null, false);
	FadeFR2("�G�����R",0,1000,150,0,0,50,null, true);

	Wait(50);

	CreateSE("SE01","se�퓬_���K�C_����01");//�������u�r�d�Fse�퓬_���K�C_����01�v
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureSP("�G�����T", 1100, Center, Middle, "cg/ef/efx04�r�[��_���K�CH01_s.jpg");
	Request("�G�����T",Smoothing);
	Zoom("�G�����T", 0, 1500, 1500, null, true);
	DeleteAllSt(0,true);

	FadeFR2("�G�����T",0,1000,150,0,0,100,null, true);

	Wait(50);

	CreateSE("SE02","se�퓬_�Ռ�_�j��01a");//�������u�r�d�Fse�퓬_�Ռ�_�j��01a�v
	MusicStart("SE02",0,700,0,1000,null,false);
//�F�������\��
	CreateColorSPadd("�G�t���b�V����", 5000, FFFFFF);
	Delete("�G����*");

	Wait(30);
	FadeDelete("�G�t���b�V����", 1000, null, true);

/*=========================================
//�������u���F���ˉ��o�������v
	CreateSE("SE01","se�퓬_���K�C_����01");//�������u�r�d�Fse�퓬_���K�C_����01�v
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateTextureEX("�G������", 1100, Center, Middle, "cg/ef/efx04�r�[��_���K�CH01.jpg");
	FadeFR2("�G������",0,1000,150,0,0,50,null, true);
	DeleteAllSt(0,true);

	Wait(50);

	CreateSE("SE01","se�퓬_���K�C_����01");//�������u�r�d�Fse�퓬_���K�C_����01�v
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateTextureEX("�G������", 1100, Center, Middle, "cg/ef/efx04�r�[��_���K�CH01.jpg");
	FadeFR2("�G������",0,1000,150,0,0,50,null, true);
	DeleteAllSt(0,true);

	Wait(50);

	CreateSE("SE01","se�퓬_���K�C_����01");//�������u�r�d�Fse�퓬_���K�C_����01�v
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateTextureEX("�G������", 1100, Center, Middle, "cg/ef/efx04�r�[��_���K�CH01.jpg");
	FadeFR2("�G������",0,1000,150,0,0,50,null, true);
	DeleteAllSt(0,true);

	Wait(50);

	CreateSE("SE01","se�퓬_���K�C_����01");//�������u�r�d�Fse�퓬_���K�C_����01�v
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateTextureEX("�G������", 1100, Center, Middle, "cg/ef/efx04�r�[��_���K�CH01.jpg");
	FadeFR2("�G������",0,1000,150,0,0,50,null, true);
	DeleteAllSt(0,true);

	Wait(50);

	CreateSE("SE01","se�퓬_���K�C_����01");//�������u�r�d�Fse�퓬_���K�C_����01�v
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateTextureEX("�G������", 1100, Center, Middle, "cg/ef/efx04�r�[��_���K�CH01.jpg");
	FadeFR2("�G������",0,1000,150,0,0,50,null, true);
	DeleteAllSt(0,true);

	Wait(50);

//���r�d�F�d�C�����ǂɓ������Đ���ȉ��𗧂Ăď���
	CreateSE("SE01","se�퓬_�Ռ�_�j��01a");//�������u�r�d�Fse�퓬_�Ռ�_�j��01a�v
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("�G�F��", 4000, "FFFFFF");
	Wait(30);
	Delete("�G������");
	FadeDelete("�G�F��", 500, null, true);

=========================================*/

	CreatePlainSP("�G��", 990);
	Shake("�G��", 200, 20, 20, -10, 10, 500, null, true);
	Delete("�G��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0072]
One of Akushima's bolts almost hits me&, but misses and 
disappears into the wall&, making a bright flash and a 
large booming noise&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_hard2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0073]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm22/3000210a01">
"That was dangerous&.&.&."

{	Fw("fw�m�C�Y_�ʏ�_pinch");}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm22/3000220a03">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�퓬_����_������01");//�������u�r�d�Fse�퓬_����_������01�v
	CreateTextureEX("�G�d�u", 1100, -361, -268, "cg/ev/ev920�m�C�Y�ːi.jpg");
	Request("�G�d�u", Smoothing);
	Zoom("�G�d�u", 0, 2000, 2000, null, true);
	SetBlur("�G�d�u", true, 2, 200, 30, false);

	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("�G�d�u", 0, 1000, null, false);
	Move("�G�d�u", 200, 0, 0, Dxl1, false);
	Zoom("�G�d�u", 200, 1000, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
Akushima stops attacking for a second&.

And in that moment&, Noiz dashes towards him&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shout");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0081]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm22/3000230a01">
"You idiot! Stop!!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�������u���F�J�b�g���o�ň������\���v

	DeleteFw();

	CreatePlainSP("�G��", 5000);
	Delete("�G�d�u");

	CreateMask("�}�X�N�P", 1400, 0, 0, "cg/mask/ci�X���b�V��_00_00.png", false);
	SetAlias("�}�X�N�P","�}�X�N�P");
	CreateTextureSP("�}�X�N���C��", 1500, Center, Middle, "cg/mask/ci�X���b�V��_00_00z.png");
	CreateTextureSP("�}�X�N�P/�G�w�i", 1400, -530, -14, "cg/ev/m/ev920�m�C�Y�ːi_m.jpg");
	CreateTextureSP("�G�w�i100", 1000, 170, 120, "cg/bg/bg301041_5_�v���`�i�W�F�C���ʂ�H�n02.jpg");
	Zoom("�G�w�i100", 0, 1500, 1500, null, true);
	SetShade("�G�w�i100", MEDIUM);

	CreateTextureSP("�Gst200", 1200, -122, 44, "cg/fu/fu����_�퓬�n�C�p�[_laugh.png");

	CreateSEEX("SE01","se�퓬_���K�C_�`���[�W01");
	MusicStart("SE01",0,700,0,1000,null,true);
	Move("�}�X�N�P/�G�w�i", 200, -500, @0, Dxl1, false);
	Move("�G�w�i100", 200, 200, @0, Dxl1, false);
	Move("�Gst200", 200, -142, @0, Dxl1, false);
	FadeDelete("�G��",200,null,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0082]
//���n�C�p�[
//�y�����z
<voice name="����" class="����" src="voice/dm22/3000240b08">
"DIIIIIIIIIIIEEEEEEEEEEEEEEEEEE!!!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���L���C�B�B�B�B���ȏ[�U�����d�C�����ˉ�
//���d�C�����ǂɓ������Đ���ȉ��𗧂Ăď���
	CreateSE("SE01","se�퓬_���K�C_����01");//�������u�r�d�Fse�퓬_���K�C_����01�v
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateTextureEX("�G�w�i200", 2000, Center, Middle, "cg/ef/efx04�r�[��_���K�CH01_s.jpg");
	Request("�G�w�i200",Smoothing);
	Zoom("�G�w�i200", 0, 1450, 1450, null, true);
	CreateTextureEXadd("�G�w�i300", 2000, Center, Middle, "cg/ef/efx04�r�[��_���K�CH01_s.jpg");
	Request("�G�w�i300",Smoothing);
	Zoom("�G�w�i300", 0, 1450, 1450, null, true);
	SetVertex("�G�w�i200", 266, 304);
	SetVertex("�G�w�i300", 266, 304);

	CreateColorEXadd("�G�F��", 5000, "White");


	CreateSE("SE01","se�퓬_���K�C_����01");//�������u�r�d�Fse�퓬_���K�C_����01�v
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("�G�w�i300", 300, -1500, 800, Dxl1, false);
	Move("�G�w�i200", 300, -1500, 800, Dxl1, false);
	Zoom("�G�w�i200", 250, 5000, 5000, Dxl1, false);
	Zoom("�G�w�i300", 250, 5000, 5000, Dxl1, false);
	Fade("�G�w�i200", 100, 1000, null, false);
	Fade("�G�w�i300", 150, 1000, null, true);

	Fade("�G�F��", 200, 1000, null, true);

	Delete("�G�d�u");
	Delete("�}�X�N�P");
	Delete("�}�X�N���C��");
	Delete("�G�w�i");
	Delete("�G�w�i100");
	Delete("�G�w�i200");
	Delete("�G�w�i300");
	Delete("�Gst200");

	CreateTextureEX("�G�d�u", 1100, Center, Middle, "cg/ev/ev920�m�C�Y�ːi.jpg");
	Request("�G�d�u", Smoothing);
	SetBlur("�G�d�u", true, 2, 200, 30, false);

	Fade("�G�d�u", 0, 1000, null, false);
	Move("�G�d�u", 300, -200, 0, null, false);
	Zoom("�G�d�u", 300, 1500, 1500, Dxl1, false);

	Fade("�G�F��", 200, 0, null, true);

	CreateSE("SE02","se�퓬_�Ō�_�q�b�g��04");//�������u�r�d�Fse�퓬_�Ō�_�q�b�g��04�v
	MusicStart("SE02",0,1200,0,1000,null,false);
	CreateColorSP("�G�F��", 4000, "FFFFFF");
	Wait(30);
	Delete("�G������");
	Delete("�G�d�u");

	FadeDelete("�G�F��", 70, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0083]
Noiz avoids a bolt by an inch&, runs up to Akushima&, and 
slams his knuckles into his chest&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//���o�L�B�b�I�I�Ƃ��Ȃ肷������
	CreateSE("SE02","se�퓬_�Ō�_�q�b�g��04");//�������u�r�d�Fse�퓬_�Ō�_�q�b�g��04�v
	MusicStart("SE02",0,1200,0,1000,null,false);
	FadeFR2("�G��",0,1000,150,0,0,50,null, true);

//���F��E�B���h�E�Ȃ�������������
	Fw("fw����_�퓬�n�C�p�[_pain");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0084]
//���n�C�p�[
//�y�����z
<voice name="����" class="����" src="voice/dm22/3000250b08">
"Guh!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

//�������u���o�F�{���Ȃ瑓�t�����Ɏ󂯂��ꍇ�ȊO�A��ʂ�h�炳�Ȃ�������I�ɗh�炷�v

//���o�L�B�b�I�I�Ƃ��Ȃ肷������
	CreateSE("SE02","se�퓬_�Ō�_�q�b�g��02");//�������u�r�d�Fse�퓬_�Ō�_�q�b�g��04�v
	MusicStart("SE02",0,1200,0,1000,null,false);
//	CreatePlainEX("�G��", 100);
//	FadeFR2("�G��",0,1000,150,0,0,50,null, true);

	Wait(100);

//���o�L�B�b�I�I�Ƃ��Ȃ肷������
	CreateSE("SE02","se�퓬_�Ō�_�q�b�g��04");//�������u�r�d�Fse�퓬_�Ō�_�q�b�g��04�v
	MusicStart("SE02",0,1200,0,1000,null,false);
//	FadeFR2("�G��",0,1000,150,0,0,50,null, true);

//���F��E�B���h�E�Ȃ�������������
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
//���n�C�p�[
//�y�����z
<voice name="����" class="����" src="voice/dm22/3000260b08">
"Gahhh!!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shout2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0091]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm22/3000270a01">
"&.&.&.! Stop! Hey&, Noiz!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE02","se�퓬_�Ō�_�q�b�g��04");//�������u�r�d�Fse�퓬_�Ō�_�q�b�g��04�v
	MusicStart("SE02",0,1200,0,800,null,false);
//	FadeFR2("�G��",0,1000,150,0,0,50,null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0092]
Noiz successfully lands a hit&.

His mercilessness frightens me a little&.

Akushima's attacks are bad&, but he's overdoing it&.&.&.!

He'll die like that&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//���o�L�B�b�I�I�Ƃ��Ȃ肷������
	CreateSE("SE02","se�퓬_�Ō�_�q�b�g��04");//�������u�r�d�Fse�퓬_�Ō�_�q�b�g��04�v
	MusicStart("SE02",0,1200,0,1000,null,false);

//	FadeFR2("�G��",0,1000,150,0,0,50,null, true);
//	Delete("�G��");

	Wait(200);

	CreateSE("SE01","se�l��_����_�ߎC��01");
	MusicStart("SE01",0,700,0,800,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0099]
Akushima&, battered and beaten&, slides down&.

No way&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
//�y�����z
<voice name="����" class="����" src="voice/dm22/3000280b08">
"&.&.&.&.&.Fuhahahahahahahahaaa!!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�m�C�Y_�ʏ�_shock");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0101]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm22/3000290a03">
"!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateWindow("�G�}�X�N", 2000, 0, 100, 1024, 374, false);
	SetAlias("�G�}�X�N","�G�}�X�N");
	Zoom("�G�}�X�N", 0, 1000, 0, null, true);

	CreateTextureEX("�}�X�N���C����", 2000, Center, Middle, "cg/mask/ci�E�B���h�E��01.png");
	CreateTextureEX("�}�X�N���C����", 2000, Center, Middle, "cg/mask/ci�E�B���h�E��01.png");


	CreateTextureSP("�G�}�X�N/�G�w�i100", 1000, -118, -116, "cg/bg/bg301041_5_�v���`�i�W�F�C���ʂ�H�n02.jpg");
	CreateTextureSP("�G�}�X�N/�G�w�i100", 1000, -118, -116, "cg/bg/bg101051_5_���Z����ʂ藠�H�n06���C���������u.jpg");
	Zoom("�G�}�X�N/�G�w�i100", 0, 1500, 1500, null, true);
	SetShade("�G�}�X�N/�G�w�i100", MEDIUM);

	CreateTextureSP("�G�}�X�N/�Gst200", 1200, Center, -244, "cg/fu/fu����_�퓬�n�C�p�[_laugh.png");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0102]
Aksuhima suddenly raises his bloodied face and smiles with his big mouth&.

{
	CreateSE("SE01","se�l��_����_�͂�01");
	MusicStart("SE01",0,700,0,1000,null,false);
}
{	Fade("�}�X�N���C��*", 0, 1000, null, false);
	Move("�}�X�N���C����", 250, @0, 90, null, false);
	Move("�}�X�N���C����", 250, @0, 474, null, false);
	Zoom("�G�}�X�N", 250, 1000, 1000, null, true);}
He grabbed Noiz's neck with one hand&, and pointed his giant
megaphone to his stomach with the other&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�m�C�Y_�ʏ�_pain");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0104]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm22/3000300a03">
"-!"

{	Fw("fw���t_�ʏ�_shout2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm22/3000310a01">
"Noiz!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Move("�}�X�N���C����", 150, @0, 281, null, false);
	Move("�}�X�N���C����", 150, @0, 281, null, false);
	Zoom("�G�}�X�N", 150, 1000, 0, null, true);
	Fade("�}�X�N���C��*", 50, 0, null, true);
	Delete("�}�X�N���C��*");
	Delete("�G�}�X�N/�G�w�i100");
	Delete("�G�}�X�N/�Gst200");
	Delete("�G�}�X�N");

	Fw("fw����_�퓬�n�C�p�[_laugh");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0111]
//�y�����z
<voice name="����" class="����" src="voice/dm22/3000320b08">
"NOW&, DIIIIIIIIIIEEEEEEEEE!!!!!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

//���L���C�B�B�B�B���ȏ[�U�����d�C�����ˉ�
	CreateSEEX("SE01","se�퓬_���K�C_�`���[�W01");
	MusicStart("SE01",0,700,0,1000,null,true);

//���F�F������
	CreateColorEXmul("�G�F��", 4000, "YELLOW");
	Fade("�G�F��", 150, 1000, null, true);
	Wait(300);
	FadeDelete("�G�F��", 300, null, true);



//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0112]
And at that moment&.&.&.

{
	CreateSE("SE81","se�퓬_����_����01");
	MusicStart("SE81",0,700,0,1000,null,false);
}
Before any thoughts can enter my mind&, I begin to run&.

Every sound outside of my body fades out&, and the only 
thing I can hear is my own heartbeat and a certain ringing 
in my ears&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 300, 0, null);

//�����t�@�C��["dm2240.nss"]

}
