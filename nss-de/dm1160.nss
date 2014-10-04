//<continuation number="150">
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


scene dm1160.nss_MAIN
{

//���o����===========================================================
	CreateColorEXadd("�G�F���C�g1", 1109, "883355");
	CreateColorEXadd("�G�F���C�g2", 1109, "448800");
	CreateColorEXadd("�G�F���C�g3", 1109, "005588");
	Request("�G�F���C�g1", Lock);
	Request("�G�F���C�g2", Lock);
	Request("�G�F���C�g3", Lock);
	DrawTransition("�G�F���C�g1", 0, 300, 300, 800, null, "cg/data/slide_02_00_0.png", true);
	DrawTransition("�G�F���C�g2", 0, 300, 300, 800, null, "cg/data/slide_02_00_0.png", true);
	DrawTransition("�G�F���C�g3", 0, 300, 300, 800, null, "cg/data/slide_02_00_0.png", true);

	$���C�g�i�b�g���P = @�G�F���C�g1;
	$���C�g�i�b�g���Q = @�G�F���C�g2;
	$���C�g�i�b�g���R = @�G�F���C�g3;
	$���C�g�i�b�g�����x = 500;
	$���C�g�^�C�� = 500;

	CreateProcess("�v���Z�X���C�g�P", 150, 0, 0, "ColorLightLoopLive2");
	SetAlias("�v���Z�X���C�g�P","�v���Z�X���C�g�P");
	Request("�v���Z�X���C�g�P", Lock);

	CreateTextureEX("dm1160_�v���Z�X���]�G�w�i", 100, Center, Middle, "cg/bg/bg303021_5_��y�{�݃N���u�t���A.jpg");
	CreateLoopFade("dm1160_�v���Z�X���]��",200,true,AddRender,cg/bg/bg303024_5_��y�{�݃N���u�t���A.jpg,cg/bg/bg303022_5_��y�{�݃N���u�t���A.jpg,cg/bg/bg303023_5_��y�{�݃N���u�t���A.jpg);
	CreateLoopFade2("dm1160_�v���Z�X���]���[�U�[",150,true,false,cg/bg/bg303023_5_��y�{�݃N���u�t���A.jpg,cg/bg/bg303023_5_��y�{�݃N���u�t���A.jpg,cg/bg/bg303023_5_��y�{�݃N���u�t���A.jpg);
	Request("dm1160_�v���Z�X���]*", Lock);

//���o����===========================================================


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

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm1160sl.nss";

}


scene dm1160.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\


	PrintBG("��w�i", 30000);

	CreateColorSP("�G�F��", 5000, "FFFFFF");
	OnBG(10,"bg303021_5_��y�{�݃N���u�t���A");
	FadeBG(0,true);
	Fade("@dm1160_�v���Z�X���]�G�w�i", 0, 1000, null, true);

	CreateSurface("�GSuf",300,0,0,false);
	SetAlias("�GSuf", "�GSuf");
	SetSurface("@dm1160_�v���Z�X���]*","�GSuf");
	Zoom("�GSuf", 0, 1500, 1500, null, true);
	Request("�GSuf", Smoothing);

	GoLoopFade("@dm1160_�v���Z�X���]��",100);
	GoLoopFade2("@dm1160_�v���Z�X���]���[�U�[",137);
	Request("@�v���Z�X���C�g�P", Start);

	CreateTextureEXadd("�G�w�i������", 50000, Center, Middle, "cg/data/circle_01_00_0.png");

	Fade("��w�i", 200, 0, null, true);
	Delete("��w�i");



//�\���J�n

//	SoundPlay("@dm022",0,450,true);

	CreateSE("SE01","se�[��_��z_�t���b�V���o�b�N01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("�G�w�i������", 200, 1000, null, true);
	Zoom("�GSuf", 1000, 1000, 1000, Dxl2, false);
	DrawDelete("�G�w�i������", 500, 500, null, "circle_01_00_1", false);
	DrawDelete("�G�F��", 1000, 500, null, "circle_01_00_1", false);
	Fade("�G�w�i������", 1000, 0, null, true);


	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm11/6000010a01">
"Ugh&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm11/6000020a02">
"&.&.&.Aoba!?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
The pain is still lingering and I hear a voice I know all 
too well&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwAM�x�j_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
//�y�x�j�z
<voice name="�x�j" class="�x�j" src="voice/dm11/6000030b16">
"Ain't that Aoba! Ren too! Hey&, Koujaku&, go get them!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

//���r�d�F�����ɋߕt���Ă��鉹�i�q�[���Ȃ��̃u�[�c�^�C�v�j
	CreateSE("SE01","se�l��_����_����03");
	MusicStart("SE01",0,700,0,800,null,false);

	Wait(500);
	SetVolumeEX("SE*", 1000, 0, null);
	Wait(200);

//	St("C",740, @0,@0,"bu�g��_�ʏ�_shout");
//	FadeSt("C",200,true);

	Fw("fw�g��_�ʏ�_shout");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm11/6000040a02">
"Are you okay&, hey! Pull yourself together!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_����01");
	MusicStart("SE01",0,700,0,1000,null,false);

	St("C",740, @0,@0,"bu�g��_�ʏ�_angry3");
	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
He lifts me up and I can see a blurry outline of Koujaku's face&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm11/6000050a01">
"Kou&.&.&. Ergh&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
I try to call out his name&, but I feel something swell up 
in my throat&.

I try to hold it back&, and put a hand to my mouth again&.
But&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_pain2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0024]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm11/6000060a01">
"Ugh!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);

	CreateSE("SE01","se�l��_�Ռ�_�@��02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorEX("�G�F��", 5000, "000000");
	Fade("�G�F��", 500, 1000, null, true);

	//�����݁FSE�F�f���ᕨ�̉��@�K�v�Ȃ���Ώ�����
	CreateSE("SE01","se�[��_��_�͂˂�01");
	MusicStart("SE01",0,500,0,700,null,false);

	Wait(200);

	Fw("fwm����C_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y�����q�`�z
<voice name="�����q�`" class="�����q�`" src="voice/dm11/6000070e24">
"Eugh! Hey!"

{	Fw("fwm���C_�ʏ�_normal");}
//�y�j���q�`�z
<voice name="�j���q�`" class="�j���q�`" src="voice/dm11/6000080e22">
"He just threw up!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
Oh shit&.&.&.

&.&.&.I've really done it now&.

Not only did I throw up all my food&, but my dignity as 
well&.

I hear screams and angry yells&.
I feel so embarrassed I could die&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_pain2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm11/6000090a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Fade("�G�F��", 500, 0, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033]
I wipe my mouth and look up&. It looks like I stained 
Koujaku's kimono pretty bad as well&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_pain2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0034]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm11/6000100a01">
"Sor- Koujaku&.&.&. Your kimono&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	//�����݁FBGM�F�؂Ȃ��n
	SoundPlay("@dm012",0,450,true);

	Fw("fw�g��_�ʏ�_cool");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm11/6000110a02">
"Idiot&, don't talk&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
I hang my head down&, Koujaku lightly brings his hand up to my face&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�g��_�ʏ�_cool2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm11/6000120a02">
"You're doing fine&, so stay still&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0043]
He says that in an unusually gentle voice&, and wipes my 
mouth with his sleeve&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0044]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm11/6000130a01">
"! It'll get dirty&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0045]
I flinch and push away Koujaku's arm&. But he just holds me down with his shoulder and wipes my mouth with his sleeve  anyway&.

You're kidding&.&.&.
Getting your nice red kimono dirty&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm11/6000140a01">
"Wha- What are you doing&.&.&.!?"

{	Fw("fw�g��_�ʏ�_cool");}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm11/6000150a02">
"Shut up&. You're not well&, so shut your mouth&. Can you
 stand?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����t�@�C��["dm1160sl.nss"]

}
