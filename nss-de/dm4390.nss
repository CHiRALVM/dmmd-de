//<continuation number="180">
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


scene dm4390.nss_MAIN
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

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm4390sl.nss";

}


scene dm4390.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	OnBG(10,"bg301031_5_�v���`�i�W�F�C���ʂ�H�n01");
	FadeBG(0,true);

	St("C",740, @0,@0,"st�N���A_���ʃ}�X�N�Ȃ�_pinch");
	FadeSt("C",0,true);

	FadeDelete("��w�i", 0, null, true);

	Fw("fw�N���A��_�ʏ�}�X�N�Ȃ�_sigh");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y�N���A���z
<voice name="�N���A��" class="�A���t�@" src="voice/dm43/9000010b18">
"My my&, you've really done it now&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
The one that was singing shrugs his shoulders and lets out a disappointed sigh&.

Thankfully I was able to hold on to my consciousness 
because the singing had stopped&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteSt("C", 200,true);
	CreateSE("SE01","se�l��_����_���01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("�G�w�i100", 100, -607, -572, "cg/bg/l/bg301031_5_�v���`�i�W�F�C���ʂ�H�n01_l.jpg");
	Move("�G�w�i100", 700, -859, -572, AxlDxl, false);
	Fade("�G�w�i100", 700, 1000, null, true);

	CreateSE("SE02","se�l��_����_���01");
	MusicStart("SE02",0,700,0,1300,null,false);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
Clear holds onto one of his arms&, staggering backwards&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FwPro("fw���t_�ʏ�_worry4",2050,"fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm43/9000020a01">
"Clear! &.&.&.!"

{	Fw("fwAM�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm43/9000030a06">
"Aoba!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SoundPlay("@dm006",0,450,true);

	DeleteFw();

	Move("�G�w�i100", 500, @0, @50, Dxl1, false);
	FadeDelete("�G�w�i100", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
I get up&, pressing onto Ren's back for support&, and run up to Clear&.

{
	CreateSE("SE01","se�l��_����_����01");
	MusicStart("SE01",0,700,0,800,null,false);
	CreateSE("SE02","se�l��_����_�ߎC��05");
	MusicStart("SE02",0,700,0,800,null,false);
	SetVolumeEX("SE02", 1000, 0, null);

	St("C",740, @0,@0,"bu�N���A_���ʃ}�X�N�Ȃ�_sad");
	FadeSt("C",200,true);
}
I take Clear as he unsteadily wobbles around and prop him 
up with both of my hands&.

&.&.&.The right arm of his coat is burnt and ripped&.

I really wasn't imagining those sparks&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm43/9000040a01">
"Clear&, are you okay!?"

{	St("C",740, @0,@0,"bu�N���A_���ʃ}�X�N�Ȃ�_normal2");
	FadeSt("C",200,true);}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm43/9000050a04">
"Master&, I'm sorry&. I'm fine&."

{	Fw("fw�N���A��_�ʏ�}�X�N�Ȃ�_normal");}
//�y�N���A���z
<voice name="�N���A��" class="�A���t�@" src="voice/dm43/9000060b18">
"Hey you&, do you know what you just did?"

{	St("C",740, @0,@0,"bu�N���A_�ʏ�}�X�N�Ȃ�_serious");
	FadeSt("C",200,true);}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm43/9000070a04">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
Clear's eyes warp with intense fury&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�N���A��_�ʏ�}�X�N�Ȃ�_pride");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
//�y�N���A���z
<voice name="�N���A��" class="�A���t�@" src="voice/dm43/9000080b18">
"I'm sure you realize what happened to your body without me
 telling you&. What're you going to do&, now that you can't
 stop it? You're really stupid&. Hahaha!"

{	St("C",740, @0,@0,"bu�N���A_�ʏ�}�X�N�Ȃ�_serious2");
	FadeSt("C",200,true);}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm43/9000090a04">
"It doesn't matter because I was able to save Master from
 your song&."

{	Fw("fw�N���A��_�ʏ�}�X�N�Ȃ�_pride");}
//�y�N���A���z
<voice name="�N���A��" class="�A���t�@" src="voice/dm43/9000100b18">
"Idiot&. You're completely broken&. It'd be bad if you try
 that again&. Haha!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
He laughs with something like his singing voice and goes 
back to the side of the other Clear&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("ML",740, @0,@0,"st�N���A��2_�ʏ�}�X�N�Ȃ�_normal");
	St("MR",740, @0,@0,"st�N���A��_�ʏ�}�X�N�Ȃ�_pride");
	FadeAllSt(200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0034]
//�y�N���A���z
<voice name="�N���A��" class="�A���t�@" src="voice/dm43/9000110b18">
"Well&, there's no reason to collect and repair you now&, so
 we'll be leaving&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("ML",740, @0,@0,"st�N���A��2_�ʏ�}�X�N�Ȃ�_normal");
	St("MR",740, @0,@0,"st�N���A��_�ʏ�}�X�N�Ȃ�_pride");
	FadeAllSt(200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y�N���A���z
<voice name="�N���A��" class="�A���t�@" src="voice/dm43/9000120b18">
"We'll definitely dye the brain of your fake master over
 there when the event opens&."

{	Fw("fw���t_�ʏ�_worry4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm43/9000130a01">
"Event&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
The event Granny talked about&.&.&.?

They're going to use Grand Music there&.&.&.?
What other things will they do?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("ML",740, @0,@0,"st�N���A��2_�ʏ�}�X�N�Ȃ�_normal");
	St("MR",740, @0,@0,"st�N���A��_�ʏ�}�X�N�Ȃ�_normal");
	FadeAllSt(200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
//�y�N���A���z
<voice name="�N���A��" class="�A���t�@" src="voice/dm43/9000140b18">
"Once all of you humans are dyed&, you'll be our servants&.
 I'm looking forward to it&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//���������Ɨ�������N���A���Q�l�g
	CreateSE("SE01","se�l��_����_����03");
	MusicStart("SE01",0,700,0,900,null,false);
	SetPan("SE01", 0, -600, Dxl3);
	Wait(50);
	CreateSE("SE02","se�l��_����_����03");
	MusicStart("SE02",0,700,0,1000,null,false);
	SetPan("SE02", 0, 600, Dxl3);
	DeleteAllSt(300,true);

	Fw("fw���t_�ʏ�_rage");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0043]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm43/9000150a01">
"Hey&, wait!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 3000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
The two Clears with the same face glance over before 
unhurriedly running out of the alleyway&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwAM�@_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm43/9000160a06">
"Aoba&, do we go after them?"

{	Fw("fw���t_�ʏ�_worry3");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm43/9000170a01">
"No&, it's fine&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0052]
They disappear in the blink of an eye&, and I look over to 
Clear&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�N���A_���ʃ}�X�N�Ȃ�_normal");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0053]
Clear is covering up his wounded arm and looks at me with 
a complicated expression on his face&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	DeleteSt("C", 0,true);

	CreateColorSP("�G���F��", 1000, "000000");
	CreateTextureSP("�G��", 1500, Center, Middle, "cg/ef/efx03���t�����01a.png");
	CreateTextureEX("�G����", 1500, Center, Middle, "cg/ef/efx03���t�����01b.png");
	CreateTextureEX("�G���Q", 1500, Center, Middle, "cg/ef/efx03���t�����01e.png");

	CreateSE("SE01","se�퓬_��_�����01");
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeDelete("�G��", 500, Dxl1, true);

	Wait(300);

	CreateSE("SE01","se�퓬_��_�����01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("�G����", 200, 1000, Dxl1, true);

	Wait(50);

	CreateSE("SE01","se�퓬_��_�����01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("�G���Q", 200, 1000, Dxl1, true);

	Wait(1000);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0054]
I look at his arm and something startles me&.
There's something dripping from his fingertips&.

&.&.&.It's blood&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	Delete("�G��*");

	St("C",740, @0,@0,"bu�N���A_���ʃ}�X�N�Ȃ�_normal");
	FadeSt("C",200,true);

	FadeDelete("�G��", 500, Dxl1, true);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm43/9000180a01">
"You're&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	CreateSE("SE01","se�l��_����_�ߎC��01");
	MusicStart("SE01",0,500,0,1400,null,false);
	DeleteAllSt(200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
I reach out my hand&, but Clear pulls away from me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����t�@�C��["dm4390sl.nss"]

}
