//<continuation number="310">
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


scene dm0210.nss_MAIN
{
$TEXTBOX_TYPE="";
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
	$GameName = "dm0220.nss";

}


scene dm0210.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

//	OnBG(10,"bg102031_1_���}�O�ʂ�");
//	FadeBG(0,true);

//	CreateWindowEX("�G��", 0, 0, 1024, 576, false);
//	CreateColorSPsub("�G�F��", 5000, "WHITE");
//	CreateColorSP("�G��/�G�F����", 4000, "BLACK");
//	CreateTextureSP("�G�w�i", 100, Center, Middle, "cg/ev/l/ev900�����P�l�̑��t_l.jpg");
//	DrawTransition("�G��/�G�F����", 0, 0, 300, 100, null, "cg/data/slide_05_00_0.png", true);
//	Fade("�G�F��", 0, 800, null, true);
	CreateColorSPsub("�G�F��", 5000, "WHITE");
	Wait(1000);
	FadeDelete("��w�i", 0, null, true);

//�����o�F�����t�̑䎌�A�ۂ��ƕ\��
//�������u�p�t�F���������ɕύX���܂����v

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y�����t�z
<voice name="�����t" class="���t" src="voice/dm02/1000010b01">
"&.&.&.Destruction and death&."

</PRE>
	SetTextM();
	TypeBeginF(150);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(500);

//�����o�F��ʓ]��

	Fade("�G�F��", 200, 1000, Dxl1, true);

//	Delete("�G��/�G*");
//	Delete("�G��*");
//	Delete("�G�w�i");

	OnBG(10,"bg102031_1_���}�O�ʂ�");
	FadeBG(0,true);
	Zoom("@OnBG*",0,1005,1005,null,false);
	Request("@OnBG*",Smoothing);
	CreateTextureSP("�G�w�i", 100, Center, InBottom, "cg/bg/l/bg102031_1_���}�O�ʂ�_l.jpg");

	CreateWindowEX("�G��", 0, 0, 1024, 576, false);
	CreateColorSP("�G��/�G����", 3000, "000000");
	DrawTransition("�G��/�G����", 0, 0, 500, 100, null, "cg/data/slide_02_00_0.png", true);

	Wait(1000);

	Fade("�G�F��", 2000, 500, null, true);

	Wait(500);

//	Fw("fw���t_�ʏ�_pain");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/1000020a01">
"&.&.&.Ngh&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
�@&.&.&.Ugh&. 
My head hurts&.&.&.

What&.&.&.
What happened&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	Fw("fw���t_�ʏ�_pain2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/1000030a01">
"&.&.&.Ah&, ow ow&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
It seems&.&.&. I'd somehow fallen on the ground&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��02");
	MusicStart("SE01",0,500,0,900,null,false);
	Fade("�G�F��", 1500, 300, null, false);
	Move("�G�w�i", 1500, @0, @100, Dxl1, false);
	DrawTransition("�G��/�G����", 1500, 500, 0, 100, Dxl1, "cg/data/slide_02_00_0.png", true);
	Delete("�G��/�G*");
	Delete("�G��*");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
I endure the pain in my whole body&, gather my strength in 
both arms&, and prop myself up&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Move("�G�w�i", 400, @-50, @0, Dxl1, true);
	Wait(100);
	Move("�G�w�i", 100, @50, @0, Dxl1, true);

	CreatePlainSP("�G��", 5000);

	CreateSE("SE01","se�l��_����_���01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Shake("�G��", 500, 0, 15, 0, 0, 500, Dxl1, true);
	Delete("�G��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
I stagger and almost fall again&, but I manage to somehow 
stay standing&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0023]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/1000040a01">
"It hurts&.&.&. but&.&.&. how did it turn out&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0024]
I press my forehead with one hand and try to arrange my 
confused memories&.

It must have&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	EfRecoIn1(10000,200);

	Fade("�G�F��", 0, 0, null, true);

	CreateTextureEX("�G���w�i", 100, Center, InBottom, "cg/bg/bg201021_0_���C���m�C�Y01.jpg");
	Fade("�G���w�i", 0, 1000, null, true);
	St("C",740, @0,@0,"st�E�T�M��_�ʏ�_normal");
	FadeSt("C",0,true);

	EfRecoIn2(500);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0025]
I was suddenly dragged into Rhyme during a delivery&, and 
some weird rabbit head&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	EfRecoOut1(100);

	Delete("�G��*");
	DeleteSt("C", 0,true);
	CreateTextureSP("�G�w�i��", 105, Center, InBottom, "cg/bg/l/bg102031_1_���}�O�ʂ�_l.jpg");
	CreateTextureSP("�G�w�i", 110, Center, InBottom, "cg/bg/l/bg102031_1_���}�O�ʂ�_l.jpg");
//	CreateTextureSP("�G���w�i", 100, Center, -190, "cg/bg/m/bg102031_1_���}�O�ʂ�_m.jpg");
	SetShade("�G�w�i��", MEDIUM);

	Fade("�G�F��", 0, 300, null, true);

	Move("�G�w�i", 0, @0, @100, Dxl1, true);
	Move("�G�w�i��", 0, @0, @100, Dxl1, true);


	EfRecoIn2(400);

	Wait(500);


	Fw("fw���t_�ʏ�_sad");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0026]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/1000050a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Move("�G�w*", 3000, @0, -160, AxlDxl, false);
	FadeDelete("�G�F��", 1000, null, false);
	Fade("�G�w�i", 3000, 0, Axl3, false);
	Wait(3500);
	Fade("�G�w�i", 500, 1000, null, true);
	Delete("�G�w�i��");
	Wait(500);


	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/1000060a01">
"&.&.&.I'm in front of the shop?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	SoundPlay("@dm006",0,450,true);
	FadeDelete("�G�w�i", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
I've seen it every day so I can't be wrong&.

I&.&.&. am standing in front of Heibon&.

But why? 
I should have gone out for a delivery&.&.&.

When I look around&, I see a lump of blue fur lying on the 
ground&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/1000070a01">
"Ren!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	DeleteFw();
	CreateTextureEX("�G�摜", 1000, Center, Middle, "cg/ev/ev004���@�N��.jpg");
	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,700,0,1200,null,false);
	SetVolumeEX("SE*", 1500, 0, null);
	Fade("�G�摜", 1000, 1000, Dxl1, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
I run up to him immediately and embrace him&. 
There's no reaction&.

I push Ren's head lightly and try calling him&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/1000080a01">
"Ren&, hey!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Wait(1000);

	CreateSE("SE01","se����_����_�@�N��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("�G�摜��", 1005, Center, Middle, "cg/ev/ev004���@�N��a.jpg");
	Fade("�G�摜��", 300, 1000, Dxl1, true);

	Delete("�G�摜");

	Wait(500);

//	Fw("fwAM�@_�ʏ�_worry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm02/1000090a06">
"&.&.&.Aoba&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0043]
After a short pause&, Ren opens his eyes&.

I feel relieved from the bottom of my heart after seeing 
him safe&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/1000100a01">
"Are you okay?"

//{	DeleteFw();}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm02/1000110a06">
"There are no large problems in particular&."

//{	Fw("fw���t_�ʏ�_worry4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/1000120a01">
"Really? You're not broken anywhere?"

//{	DeleteFw();}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm02/1000130a06">
"Some of the data is damaged&."

//{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/1000140a01">
"Isn't that enough of a problem?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
Ren should also have received damage in Rhyme from that 
rabbit headed guy&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	CreateSE("SE01","se�l��_����_�ߎC��01");
//	MusicStart("SE01",0,700,0,1000,null,false);
	FadeDelete("�G�摜��", 500, null, true);

	Fw("fw���t_�ʏ�_worry3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/1000150a01">
"I'll examine you once we get home&, okay?"

{	Fw("fwAM�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm02/1000160a06">
"To be on the safe side&, please do&."

{	Fw("fw���t_�ʏ�_sad");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/1000170a01">
"Yeah&. It even feels like some of the data in my brain's
 damaged&.&.&."

{	Fw("fw���t_�ʏ�_worry");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/1000180a01">
"I remember fighting with that rabbit head&, but how did it
 turn out?"

{	Fw("fwAM�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm02/1000190a06">
"My data from then on is also damaged&."

{FwPro("fw���t_�ʏ�_worry3",2000,"fw���t_�ʏ�_sad");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/1000200a01">
"I see&.&.&. Wait a minute&, I'll try to remember&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorSP("�G�F��", 5000, "000000");
	DrawTransition("�G�F��", 1000, 0, 1000, 100, AxlDxl, "cg/data/slide_05_00_0.png", true);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
I endure the headache&, close my eyes&, and search my 
memory&.

But the more I try to remember&, the more it feels like the memories go farther away&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	DrawDelete("�G�F��", 500, 100, Dxl1, "slide_05_00_0", true);

//	Wait(500);

	Fw("fw���t_�ʏ�_pain2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/1000210a01">
"&.&.&.It's useless&. I can't remember anything&.&.&."

{	Fw("fwAM�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm02/1000220a06">
"There's nothing we can do about it&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/1000230a01">
"Really? Why?"

{	Fw("fwAM�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm02/1000240a06">
"If the average man's storage capacity is assumed to be
 one-hundred&, Aoba's capacity would be&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FwPro("fw���t_�ʏ�_fake",3050,"fw���t_�ʏ�_shock3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0085]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/1000250a01">
"Are we really having this conversation right now?
 &.&.&.Ah&.&.&.&."

{	Fw("fwAM�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm02/1000260a06">
"Aoba?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 5001);
	//CreatePlainSP("�G�ʓ�", 5000);
	CreateTextureSP("�G�ʓ�",5000,0,0,"cg/bg/bg102031_1_���}�O�ʂ�.jpg");
	Zoom("�G�ʓ�",0,1005,1005,null,false);
	Request("�G�ʓ�",Smoothing);
	DrawEffect("�G�ʓ�", 0, "Ripple", 100, 100, null);
//	DrawEffect("�G���w�i", 0, "Ripple", 100, 100, null);
	FadeDelete("�G��", 1000, null, true);

	Fw("fw���t_�ʏ�_shock4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0087]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/1000270a01">
"Hu&.&.&. huh? I'm&, getting kinda dizzy&.&.&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/1000280a01">
"&.&.&.Ren&, you&.&.&. since when did you have eight legs&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�����o�F���t�A�ǂ����Ɠ|���

	CreateWindowEX("�G��", 0, 0, 1024, 576, false);
	CreateColorEX("�G��/�G�F��", 5000, "000000");
//	CreatePlainSP("�G�ʓ�", 100);

//	Move("�G���w�i", 300, @0, @-70, Axl3, false);
//	Wait(100);

//���r�d�F�n�ʂɓ|���
	CreateSE("SE01","se�l��_�Ռ�_�]�|02");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("�G��/�G�F��", 0, 1000, null, false);
	DrawTransition("�G��/�G�F��", 300, 0, 700, 100, Dxl1, "cg/data/slide_02_00_0.png", true);
//	Delete("�G��");
	Shake("�G���w�i", 200, 0, 10, 0, 0, 500, Dxl1, true);


//	Fw("fwAM�@_�ʏ�_rage");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm02/1000290a06">
"Aoba!"

//{	Fw("fw���t_�ʏ�_pain2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/1000300a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0091]
What is this&.&.&.?

Everything in front of me is spinning&.&.&.

Where's the ground&.&.&.? What&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//���r�d�F�@_����_���苎��i�@�A�ĂĂĂĂ��Ɖ��������Ă����j

//	Fw("fwAM�@_�ʏ�_rage");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0092]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm02/1000310a06">
"Wait here&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	CreateSE("SE01","se����_����_����@01");
	MusicStart("SE01",0,700,0,1000,null,false);

//	Wait(500);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
Ren runs off somewhere&.

I watch him as he leaves&. It looks like there are three of him&, and I unconsciously laugh&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	DrawTransition("�G�F��", 1000, 700, 1000, 100, Dxl1, "cg/data/slide_02_00_0.png", true);
	Delete("�G���w�i");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0101]
Haha&, that's strange&.&.&.

Ren has three heads&.&.&.

&.&.&.My consciousness broke off there&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

Wait(8);
	SetVolumeEX("@dm*", 1000, 0, null);
	ClearFadeAll(1000, true);

	Wait(1000);

//�����t�@�C��["dm0220.nss"]

}
