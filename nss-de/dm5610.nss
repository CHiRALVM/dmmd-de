//<continuation number="30">
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


scene dm5610.nss_MAIN
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
	#ev561�����߂���Z�C=true;
	#ev561�����߂���Z�Ca=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm5620.nss";

}


scene dm5610.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	OnBG(10,"bg304161_5_���]�^���[�Z�C�����O");
	FadeBG(0,true);
	CreateTextureSP("�G�w�i��", 11, Center, -380, "cg/bg/l/bg304161_5_���]�^���[�Z�C�����O_l.jpg");

	FadeDelete("��w�i", 0, null, true);

	CreateTextureEX("�G�w�i100", 100, Center, -434, "cg/bg/l/bg304161_5_���]�^���[�Z�C�����O_l.jpg");
	Zoom("�G�w�i100", 0, 2000, 2000, null, false);
	Request("�G�w�i100", Smoothing);
	Fade("�G�w�i100", 1000, 1000, null, true);

//	CreateSE("SE01","se����_�O���b�^�[����_���J��01a");
//	MusicStart("SE01",0,700,0,700,null,false);

//	Wait(1000);

	CreateSE("SE02","se����_�O���b�^�[����_���J��01b");
	MusicStart("SE02",0,700,0,700,null,false);

	CreateColorSP("�G����", 1000, "ffffff");
	DrawTransition("�G����", 2000, 0, 1000, 100, null, "cg/data/slide_06_00_1.png", true);

	Wait(1000);

	CreateTextureSP("�G�d�u110", 110, 1000, -71, "cg/ev/l/ev561�����߂���Z�C_l.jpg");
	Zoom("�G�d�u110", 0, 2000, 2000, null, false);
	Request("�G�d�u110", Smoothing);

	FadeDelete("�G����", 2000, null, true);

	Move("�G�d�u110", 2000, 1000, 410, Dxl1, true);

	CreateTextureEX("�G�d�u111", 111, -1430, -200, "cg/ev/l/ev561�����߂���Z�C_l.jpg");
	Zoom("�G�d�u111", 0, 1400, 1400, null, false);
	Request("�G�d�u111", Smoothing);

	Fade("�G�d�u111", 1000, 1000, null, true);
	Move("�G�d�u111", 1500, -1430, -521, Dxl1, true);

	Delete("�G�d�u110");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0009]
The room is bright and colorful&, and decorated in a way 
not unlike a playroom for children&.

The ribbons&, the toys&, the gift boxes&.&.&. The sudden burst 
of color gives me a flash of dizziness&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Move("�G�d�u111", 2000, -869, -521, AxlDxl, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
A feeble-looking boy sits on a chair in the middle of the 
room&, unmoving&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm56/1000010a01">
"&.&.&.Sei&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SoundPlay("@dm015",0,450,true);

	Move("�G�d�u111", 800, -569, -521, Dxl1, false);

	CreateTextureEX("�G�d�u112", 112, Center, Middle, "cg/ev/ev561�����߂���Z�C.jpg");
	Fade("�G�d�u112", 800, 1000, null, true);

	Delete("�G�d�u111");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
Upon seeing his blank expression&, suffocating lumps arose 
in my throat&.

I swallowed them down and walked up to Sei&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureEX("�G�d�u113", 113, -384, -367, "cg/ev/l/ev561�����߂���Z�C_l.jpg");
	Move("�G�d�u113", 1500,  -384, -98, Dxl1, false);
	Fade("�G�d�u113", 1500, 1000, null, true);

	Wait(500);

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,600,0,1000,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
The pale skin of his cheeks are of an almost transparent 
whiteness&. I reach out and put one hand to his face&.

His skin is cold&.

I suddenly remember our brief meeting in that back alley&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G�ʂP", 10000);

	CreateTextureSP("��z1000", 1000, Center, Middle, "cg/ev/ev515�������܂�Z�Ca.jpg");

	CreateColorSP("��z�F", 5000, "624a2b");
	Request("��z�F", OverlayRender);

	CreateTextureSPmul("��z�g", 1500, Center, Middle, "cg/ef/effi��z01.jpg");

	FadeDelete("�G�ʂP", 500, null, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
Sei was squatting down like a lost child in the corner of 
a forgotten alleyway&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
Toue mentioned that Sei longed for freedom and had created countless self-consciousnesses&.

And because of that&, both his body and his mind began to 
deteriorate&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G�ʂQ", 10000);

	Delete("��z*");

	FadeDelete("�G�ʂQ", 500, null, true);

	Fw("fw���t_�ʏ�_worry3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm56/1000020a01">
"&.&.&.I'm sorry for being so late&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
As I murmur an apology&, Sei's eyelashes make the slightest movement&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureEX("�G�d�u114", 114, -384, -98, "cg/ev/l/ev561�����߂���Z�Ca_l.jpg");
	Fade("�G�d�u114", 600, 1000, null, true);
	Delete("�G�d�u113");
	Wait(1000);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
His dark&, dull eyes slowly move to me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Sei(2000,1000,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
At that moment&.&.&.

An electric shock ran through my body&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 1500, 0, null);

	Sei(2000,1000,true);

	CreateSE("SE01","se�l��_�S��_�ۓ�01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureSP("�G�d�u115", 115, -384, -128, "cg/ev/l/ev561�����߂���Z�Ca_l.jpg");
	Zoom("�G�d�u115", 500, 1300, 1300, null, false);
	FadeDelete("�G�d�u115", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm56/1000030a01">
"&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�[��_����_�L�[��01");
	MusicStart("SE01",0,700,0,500,null,false);

	CreateColorEX("�G����", 5000, "FFFFFF");
	Fade("�G����", 0, 850, null, true);
	DrawTransition("�G����", 500, 0, 1000, 100, Dxl1, "cg/data/circle_02_00_0.png", true);

	CreateColorEXadd("�G�����Q", 5001, "FFFFFF");
	Fade("�G�����Q", 0, 1000, null, true);
	DrawTransition("�G�����Q", 5000, 0, 1000, 1000, Dxl1, "cg/data/circle_02_00_0.png", true);

	Wait(1000);

//�����t�i�Ƙ@�j�A�����I�ɐ��_���E�֘A��čs�����
//���Z�C�̐��_���E�B�^�����ŉ����Ȃ��B

//�����t�@�C��["dm5620.nss"]

}
