//<continuation number="290">
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


scene dm3150.nss_MAIN
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
	#ev315���t������=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm3160h.nss";

}


scene dm3150.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\


	PrintBG("��w�i", 30000);

	CreateColorSP("�G�F��", 5000, "000000");
	OnBG(10,"bg303021_5_��y�{�݃N���u�t���A");
	FadeBG(0,true);

	CreateTextureEX("�G�w�i", 100, Center, Middle, "cg/bg/l/bg303021_5_��y�{�݃N���u�t���A_l.jpg");
	//Fade("�G�w�i", 0, 1000, null, true);


//���C�g����===========================================================
	CreateColorEXadd("�G�F���C�g1", 1109, "883355");
	CreateColorEXadd("�G�F���C�g2", 1109, "FF88CC");
	CreateColorEXadd("�G�F���C�g3", 1109, "CC2266");
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


	CreateLoopFade("�v���Z�X���]��",200,true,AddRender,cg/bg/bg303023_5_��y�{�݃N���u�t���A.jpg,cg/bg/bg303023_5_��y�{�݃N���u�t���A.jpg,cg/bg/bg303023_5_��y�{�݃N���u�t���A.jpg);
	CreateLoopFade2("�v���Z�X���]���[�U�[",150,true,false,cg/bg/bg303022_5_��y�{�݃N���u�t���A.jpg,cg/bg/bg303022_5_��y�{�݃N���u�t���A.jpg,cg/bg/bg303022_5_��y�{�݃N���u�t���A.jpg);

	CreateSurface("�GSuf",300,0,0,false);
	SetAlias("�GSuf", "�GSuf");
	Request("�GSuf", Smoothing);
	Zoom("�GSuf", 0, 3000, 3000, null, true);
	Rotate("�GSuf", 0, @0, @0, 70, null,true);
	Move("�GSuf", 0, 100, @0, null, true);

	SetSurface("�v���Z�X���]*","�GSuf");
	Request("@�v���Z�X���]*", Smoothing);

	//SetBlur("�GSuf", true, 3, 200, 230, false);

	GoLoopFade("@�v���Z�X���]��",300);
	GoLoopFade2("@�v���Z�X���]���[�U�[",220);
	Request("@�v���Z�X���C�g�P", Start);

	Lens_Set("�����Y�P",5000,-300,-300,1600,1600);
	Lens_Start(3500);
	//MoveFFP1("@�GSuf",20000);

	Delete("��w�i");


	CreateSE("SE55","se�l��_�S��_�ۓ�01L");
	MusicStart("SE55",5000,500,0,700,null,true);


	DrawTransition("�G�F��", 2000, 1000, 400, 300, AxlDxl, "cg/data/slide_05_00_0.png", true);
	Wait(500);
	Zoom("�GSuf", 2000, 2100, 2100, AxlDxl, false);
	DrawTransition("�G�F��", 2000, 400, 0, 300, AxlDxl, "cg/data/slide_05_00_0.png", false);
	Fade("�G�F��", 2000, 0, null, true);
	Delete("�G�F��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
&.&.&.

&.&.&.
&.&.&.&.&.

&.&.&.&.&.&.&.Huh?

I see a bunch of feet in front of me&.
All noisy and restlessly moving around the dim room&.

I&.&.&.

Did I collapse?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	Fw("fwAM�@_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
//�����H�F������
//�y�@�z
<voice name="�@" class="�@" src="voice/dm31/5000010a06">
"Aoba&, are you all right?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
Ren's voice slips into my ears along with the sound of the pounding music&.

As if it's coming closer&, the music turns into a single 
rhythm&.

With my face on the floor&, the low bass directly shakes 
me&. The vibration jolts my brain&.

The high pitched electronic sounds sound like the shriek 
of a drill drilling into my head&.

The bass and my heartbeat pile up&, crushing my heart to 
bits&.

Red and pink lights flash onto the floor&.
It might be the music&, but I can hear heavy breathing&.

Red lights&.
Pink lights&.

A lovely voice&. The low bass&.
The piercing shrieks&.

Repeating over and over&.&.&.

The sight of blood soaks my vision&, with my brain feeling 
as if it's been blown out&.

Over and over&.&.&.

Inside of me&.&.&.

My insides&.&.&.

Penetrating&.&.&.

&.&.&.Me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�����o�F�����ŏ����Ԃ��J����i���t��������Ɉ����������j

	CreateColorEX("�G�F��", 15000, "000000");
	Fade("�G�F��", 2000, 1000, null, true);

	Zoom("�GSuf", 0, 1100, 1100, null, true);
	Rotate("�GSuf", 0, @0, @0, 0, null,true);
	Move("�GSuf", 0, 0, 0, null, true);

	Request("@�v���Z�X���C�g�P", Stop);
	Delete("@�v���Z�X���C�g�P");
	Delete("�����Y*");
	Delete("�GSuf*");
	Delete("�G�w�i");
	Delete("�G�F���C�g*");
	DeleteLoopFade("�v���Z�X���]��");
	DeleteLoopFade2("�v���Z�X���]���[�U�[");
	//DrawEffect("�GSuf", 0, "Ripple", 100, 100, null);
	Wait(1000);

	OnBG(10,"bg303021_5_��y�{�݃N���u�t���A");
	FadeBG(0,true);

//���C�g����===========================================================
	CreateColorEXadd("�G�F���C�g1", 1109, "883355");
	CreateColorEXadd("�G�F���C�g2", 1109, "448800");
	CreateColorEXadd("�G�F���C�g3", 1109, "005588");
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


	CreateLoopFade("�v���Z�X���]��",200,true,AddRender,cg/bg/bg303023_5_��y�{�݃N���u�t���A.jpg,cg/bg/bg303023_5_��y�{�݃N���u�t���A.jpg,cg/bg/bg303023_5_��y�{�݃N���u�t���A.jpg);
	CreateLoopFade2("�v���Z�X���]���[�U�[",150,true,false,cg/bg/bg303022_5_��y�{�݃N���u�t���A.jpg,cg/bg/bg303022_5_��y�{�݃N���u�t���A.jpg,cg/bg/bg303022_5_��y�{�݃N���u�t���A.jpg);

	CreateTextureEX("�_��", 700, 0, 0, "cg/bg/bg303022_5_��y�{�݃N���u�t���A.jpg");
	Fade("�v���Z�X���]�_��", 0, 1000, null, true);

	CreateTextureSP("�v���Z�X���]�G�w�i", 100, Center, Middle, "cg/bg/bg303021_5_��y�{�݃N���u�t���A.jpg");

	CreateBlink("�_��");

	CreateSurface("�GSuf",300,0,0,false);
	SetAlias("�GSuf", "�GSuf");
	SetSurface("�v���Z�X���]*","�GSuf");
	Request("�GSuf", Smoothing);
	Request("�_��", Smoothing);

	GoLoopFade("@�v���Z�X���]��",100);
	GoLoopFade2("@�v���Z�X���]���[�U�[",71);
	Request("@�v���Z�X���C�g�P", Start);

	SoundPlay("@dm022",3000,450,true);

//	SetVolumeEX("@dm*", 3000, 450, null);
	SetVolumeEX("@SE55", 3000, 0, null);


	Wait(300);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm31/5000020a05">
"&.&.&.Hey&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);

	Wait(200);
	CreateSE("SE01","se�l��_����_�@��02");
	MusicStart("SE01",0,1000,0,1400,null,false);

	Wait(200);

	CreateSE("SE01","se�l��_����_�@��02");
	MusicStart("SE01",0,1000,0,1400,null,false);

	Wait(500);

	St("C",740, @0,@0,"st�~���N_�ʏ�_normal");
	FadeSt("C",0,true);



	FadeDelete("�G�F��", 2000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
Something hits my face and I open my eyes&.

I see Mink&, his face covered in wild shades of pink and 
red by the light&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//���ɃG�t�F�N�g(0)

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
&.&.&.My head hurts&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
{	St("C",740, @0,@0,"st�~���N_�ʏ�_angry2");
	FadeSt("C",200,true);}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm31/5000030a05">
"Get up&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0043]
Mink pulls me up by the arm and stands me up&.

But my feet won't carry me&.
It's like I've become a flimsy sponge&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0044]
{	St("C",740, @0,@0,"st�~���N_�ʏ�_angry2");
	FadeSt("C",200,true);}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm31/5000040a05">
"Tch&. What're you doing&, get up&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

	CreateSE("SE01","se�l��_����_�ߎC��01");
	MusicStart("SE01",0,700,0,1000,null,false);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
I hear him click his tongue as he puts his large arm 
around my back&. He pulls me up by my shoulders&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_sad");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm31/5000050a01">
"&.&.&.My medicine&."

{	St("C",740, @0,@0,"bu�~���N_�ʏ�_normal2");
	FadeSt("C",200,true);}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm31/5000060a05">
"Ah?"

{	Fw("fw���t_�ʏ�_sad");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm31/5000070a01">
"I just&.&.&. took my meds&.&.&. but it's not working&.&.&.
 my head&.&.&."

{	St("C",740, @0,@0,"bu�~���N_�ʏ�_angry4");
	FadeSt("C",200,true);}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm31/5000080a05">
"Start walking&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
Mink starts to move forward&.

{
	CreateSE("SE01","se�l��_����_�ߎC��24");
	MusicStart("SE01",0,800,0,800,null,false);
}
Unable to move my own legs&, Mink pulls me along like a 
puppet&. I slide across the floor&.

Dragged along&.

Just dragging&.

&.&.&.This is ridiculous&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 1000, 0, null);

	Fw("fw���t_�ʏ�_trip");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0065]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm31/5000090a01">
"Heh&, huahahahahaha!"

{	St("C",740, @0,@0,"bu�~���N_�ʏ�_angry");
	FadeSt("C",200,true);}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm31/5000100a05">
"&.&.&.&.&."

{	Fw("fw���t_�ʏ�_trip");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm31/5000110a01">
"Aha&, Ahahahahaha!"

{	St("C",740, @0,@0,"bu�~���N_�ʏ�_angry2");
	FadeSt("C",200,true);}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm31/5000120a05">
"&.&.&.An overdose?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
For some reason&, I feel weird&.
An unbearable strangeness&. My head hurts&.

{
	CreateSE("SE01","se�l��_����_�ߎC��24");
	MusicStart("SE01",0,800,0,800,null,false);
}
Mink keeps forcibly pulling me along as I keep laughing&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 1000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0075]
{	Fw("fwm�M����B_�h���C_normal");}
//�y�����q�`�z
<voice name="�����q�`" class="�����q�`" src="voice/dm31/5000130e24">
"Oh now&, is that kid okay? He's completely stoned!"

{	St("C",740, @0,@0,"bu�~���N_�ʏ�_angry");
	FadeSt("C",200,true);}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm31/5000140a05">
"&.&.&.&.&."

{	Fw("fwm�M����B_�h���C_normal");}
//�y�����q�`�z
<voice name="�����q�`" class="�����q�`" src="voice/dm31/5000150e24">
"And you hottie with the hard-to-see faaace&. I like
 youuuu&. Let's plaaay!" 

{	St("C",740, @0,@0,"bu�~���N_�ʏ�_angry2");
	FadeSt("C",200,true);}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm31/5000160a05">
"Move&."

{
	CreateSE("SE01","se�l��_�Ռ�_�@��02");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fw("fwm�M����B_�h���C_normal");}
//�y�����q�`�z
<voice name="�����q�`" class="�����q�`" src="voice/dm31/5000170e24">
"Kya!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	DeleteFw();
	DeleteAllSt(200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
He coldheartedly shoves the following girl away and 
silently continues on&.

We make it to the door&, and then stop&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 200, 0, 15, 0, 0, 500, null, true);
	Delete("�G��");

	Fw("fw���t_�ʏ�_sad");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0081]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm31/5000180a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0082]
Why&.&.&.

I'm about to stumble over and fall&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0083]
{	St("C",740, @0,@0,"bu�~���N_�ʏ�_angry2");
	FadeSt("C",200,true);}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm31/5000190a05">
"What are you doing?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��10");
	MusicStart("SE01",0,700,0,1000,null,false);
	DeleteAllSt(200,true);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 200, 0, 10, 0, 0, 500, null, true);
	Delete("�G��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
Mink tightens his grip and speaks to me in an irritated 
tone&.

{
	CreateSE("SE02","se�l��_����_����01");
	MusicStart("SE02",0,1000,0,1000,null,false);
}
I find myself stangely amused again&, and throw my arms 
over Mink's neck&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_trip");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0091]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm31/5000200a01">
"Ahehe&, aha!"

{
	Fw("fw�~���N_�ʏ�_shout");
}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm31/5000210a05">
"&.&.&.Hey&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	CreateSE("SE01","se�l��_����_�ߎC��02");
	MusicStart("SE01",0,600,0,1000,null,false);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 200, 10, 0, 0, 0, 500, null, true);
	Delete("�G��");

	SetVolumeEX("SE*", 500, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0092]
Mink grips my shoulder and pushes me away&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0093]
At that moment&, a bolt of lightning flashes&.

&.&.&.I want to be ruined&.

I want to destroy&. I want to destroy&.
Everything&.

I want to be broken&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//������̋��ɓ���a����
//	Wait(500);
	CreateSE("SE01","se�l��_����_����01");
	MusicStart("SE01",0,700,0,800,null,false);

	CreateTextureEX("�G�d�u100", 1100, Center, Middle, "cg/ev/l/ev315���t������_l.jpg");
	CreateTextureEX("�G�d�u200", 1100, Center, Middle, "cg/ev/ev315���t������.jpg");

	//CreateSE("SE01","�r�d�_�~�[");//�������u�r�d�Fse�l��_����_�ߎC��03�v
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("�G�d�u100", 1000, @150, @0, Dxl1, false);
	Fade("�G�d�u100", 1000, 1000, null, true);

	Wait(500);

//	Fw("fw���t_�ʏ�_trip");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm31/5000220a01">
"&.&.&.Ha&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0101]
Taking a hot breath&, I press my head to Mink's chest&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	Fw("fw�~���N_�ʏ�_angry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0102]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm31/5000230a05">
"Cut it out&."

//{	Fw("fw���t_�ʏ�_sad");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm31/5000240a01">
"&.&.&.Let me do it&."

//{	Fw("fw�~���N_�ʏ�_angry2");}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm31/5000250a05">
"&.&.&.Huh?"

//{	Fw("fw���t_�ʏ�_trip");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm31/5000260a01">
"Destroy me&. I want you to wreck me&."

//{	Fw("fw���t_�ʏ�_smile");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm31/5000270a01">
"In pieces&, recklessly&, sloppily&.&.&. anything's fine&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Fade("�G�d�u200", 1000, 1000, null, true);

	Wait(500);

//	Fw("fw���t_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0110]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm31/5000280a01">
"Right here&, right now&.&.&. Ruin me&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0112]
As I speak to him&, the lights and sounds violate me&.

But that's not enough&.
I want to feel something more direct&.

I want to feel it so much&.&.&. so much that I can't think 
anymore&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0113]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm31/5000290a05">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��25");
	MusicStart("SE01",0,700,0,1000,null,false);

	Delete("�G�d�u100");
	FadeDelete("�G�d�u200", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0120]
Mink is silent for a little while&. Eventually&, he starts 
to walk and pull me along&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	ClearFadeAll(1000, true);

	Wait(500);

//�����t�@�C��["dm3160h.nss"]

}
