//<continuation number="560">
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


scene dm2150.nss_MAIN
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
	#ev215�m�C�Y�ƃt�[�h�R�[�g=true;
	#ev215�m�C�Y�ƃt�[�h�R�[�ga=true;
	#ev215�m�C�Y�ƃt�[�h�R�[�gb=true;
	#ev215�m�C�Y�ƃt�[�h�R�[�gc=true;
	#bg301021_5_�v���`�i�W�F�C�����ʂ�2�Q�[�Z��=true;
	#bg301071_5_�v���`�i�W�F�C������ʂ�=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm2160.nss";

}


scene dm2150.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	CreateColorSP("�G�F��", 5000, "000000");

	OnBG(10,"bg301021_5_�v���`�i�W�F�C�����ʂ�2�Q�[�Z��");
	FadeBG(0,true);

	Delete("��w�i");

	SoundPlay("@dm004",0,450,true);

	DrawDelete("�G�F��", 1000, 100, null, "blind_01_00_1", true);


	Fw("fw���t_�ʏ�_angry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/5000010a01">
"Hey&, wait up!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
I catch up to Noiz&, who is walking at a fast pace&.

When I raise my head to say at least one complaint&, 
something catches the edge of my field of view&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateTextureEX("�G�w�i100", 100, -187, -572, "cg/bg/l/bg301021_5_�v���`�i�W�F�C�����ʂ�2�Q�[�Z��_l.jpg");
	Move("�G�w�i100", 500, 0, -572, Dxl3, false);
	Fade("�G�w�i100", 500, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
&.&.&.What is it?

I felt like something was in the darkness there just now&.

Something white from top to bottom that seemed like a ghost&.&.&.

Though I look back to check it&, there's nothing there&.

&.&.&.Was it my imagination?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FadeDelete("�G�w�i100", 300, null, true);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/5000020a01">
"&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
&.&.&.When I turn back&, Noiz is nowhere to be seen&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_rage");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/5000030a01">
"That guy&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//	CreateSE("SE01","se�l��_����_����03");
	CreateSE("SE01","se�l��_����_����03");
	MusicStart("SE01",0,800,0,1400,null,false);

	CreateColorSP("�G����", 25000, "BLACK");
	DrawTransition("�G����", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

//cono�u���o�F�w�i��قǒ����v
	OnBG(10,"bg301071_5_�v���`�i�W�F�C������ʂ�");
	FadeBG(0,true);

	SetVolumeEX("SE*", 1000, 0, null);

	DrawDelete("�G����", 500, 100, null, "blind_01_00_1", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
I search around while walking at a quick pace and find 
Noiz stopped in front of a store&.

Simple restaurants seem to be gathered around here&, and 
there are also similar shops left and right&.

That reminds me&, he did say he was hungry&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shout");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0023]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/5000040a01">
"Hey&, Noiz!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	CreatePlainSP("�G��", 5000);

	CreateMaskSP("�G��", 2000, 0, 0, "cg/mask/ci���C��_01_00.png", false);
	CreateMaskSetSP("�G��", 4000, 0, 0, "ci���C��_01_00", true, "ci���C��_01_00z");
	CreateTextureSP("�G���g", 4000, Center, Middle, "cg/mask/ci���C��_01_00z.png");
	CreateTextureSP("�G��/�G�V�F�[�h�p", 500, Center, Middle, "cg/bg/l/bg301071_5_�v���`�i�W�F�C������ʂ�_l.jpg");
	CreateTextureEX("�G��/�G����", 700, 433, 38, "cg/bu/bu�m�C�Y_�ʏ�_normal.png");
	CreateColorEX("�G��/�G����", 200, "000000");


	SetShade("�G��/�G�V�F�[�h�p", MEDIUM);
	Fade("�G��/�G����", 0, 200, null, true);

	DrawDelete("�G��", 300, 100, Dxl1, "slide_05_01_0", true);

	Move("�G��/�G����", 200, @20, @, Dxl1, false);
	Fade("�G��/�G����", 200, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0024]
I call out his name as I run up to him&, and he turns 
around&.

He's holding something like octopus dumplings in his hand&. So he's already bought stuff&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	Fade("�G��/�G*", 0, 0, null, true);
	Fade("�G��*", 0, 0, null, true);

	FadeDelete("�G��", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
Noiz returns his eyes to the shop and moves to the next 
one&. He's buying something again&.

He moves to the next store again&, and buys something&.

And again&, he moves to the next store and buys something&.

&.&.&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shout2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/5000050a01">
"How much is he buying!?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
Noiz's both hands are full with food in no time&. It's 
enough to think that he's likely to drop all of it at 
any moment&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_����03");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(1000);
	SetVolumeEX("SE*", 1000, 0, null);

	Fw("fw���t_�ʏ�_sigh");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/5000060a01">
"You can't carry any more than that&. Give me some&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se����_��_������G��01");
	MusicStart("SE01",0,600,0,1400,null,false);

	CreateSE("SE02","se����_��_�ۂ߂�01");
	MusicStart("SE02",0,400,0,800,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0034]
I can't bear the sight of it any longer and I rush over to him&, taking some of the food from his arms&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureEX("�G�d�u110", 110, -100, -100, "cg/ev/l/ev215�m�C�Y�ƃt�[�h�R�[�g_l.jpg");
	Move("�G�d�u110", 500, -120, -100, Dxl1, false);
	Fade("�G�d�u110", 500, 1000, null, true);

	Wait(300);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/5000070a03">
"If you wanna eat too&, go ahead&."

{
	Fw("fw���t_�ʏ�_sigh2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/5000080a01">
"Er&, I didn't mean it like that&.&.&. You bought too damn
 much&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/5000090a03">
"If it's about money&, I have plenty&."

{
	Fw("fw���t_�ʏ�_sigh");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/5000100a01">
"What's that supposed to mean? Are you doing a part time
 job with a good hourly pay?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/5000110a03">
"I'm dealing Rhyme information&. There are lots of customers who want my team's information even if it's expensive&.
 They just wanna know where Usui'll show up&."

{
	Fw("fw���t_�ʏ�_normal2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/5000120a01">
"Huh&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
He did say he was doing something like that&.

But I don't understand why anyone would pay money to buy 
information about a game&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FadeDelete("�G�d�u110", 250, null, true);

	Fw("fw�m�C�Y_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/5000130a03">
"Hey&, what's that?"

{
	Fw("fw���t_�ʏ�_shock");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/5000140a01">
"&.&.&.Huh?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	CreateTextureSP("�G�}�X�N�g��", 110, 505, 0, "cg/mask/ci�E�B���h�E�c01.png");
	CreateTextureSP("�G�}�X�N�g�E", 110, 505, 0, "cg/mask/ci�E�B���h�E�c02.png");

	CreateMask("�G�}�X�N��", 100, 0, 0, "cg/mask/ci�c���C��_00_00.png", false);
	SetAlias("�G�}�X�N��","�G�}�X�N��");
	CreateTextureSP("�G�}�X�N��/�G�摜", 100, -599, -522, "cg/ev/l/ev215�m�C�Y�ƃt�[�h�R�[�g_l.jpg");

	Zoom("�G�}�X�N��",0,0,1000,null,true);

	FadeDelete("�G��", 100, null, false);

	Move("�G�}�X�N�g��", 200, 300, 0,Dxl3,false);
	Move("�G�}�X�N�g�E", 200, 710, 0,Dxl3,false);
	Zoom("�G�}�X�N��",200,1150,1000,Dxl3,true);

	Wait(200);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0052]
Noiz&, with a straight face&, points at the octopus 
dumplings that I'm holding&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_cranky");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0053]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/5000150a01">
"Didn't you just buy this?"

{
	Fw("fw�m�C�Y_�ʏ�_normal2");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/5000160a03">
"I did&, but I don't know what it's called&."

{
	Fw("fw���t_�ʏ�_shock2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/5000170a01">
"&.&.&.Wha?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
Thinking he's joking&, I stare at Noiz's face&.
But it doesn't look like he is&.

Noiz curiously peers at the octopus dumplings&.

&.&.&.So he's actually serious?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_cranky");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/5000180a01">
"Are you joking?"

{
	Fw("fw�m�C�Y_�ʏ�_angry");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/5000190a03">
"I'm not&. Just tell me the name already&."

{
	Fw("fw���t_�ʏ�_cranky3");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/5000200a01">
"Octopus dumplings&."

{
	Fw("fw�m�C�Y_�ʏ�_normal");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/5000210a03">
"Octopus dumplings&.&.&. Hmmm&, weird&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	FadeDelete("�G�}�X�N*", 200, null, false);
	Move("�G�}�X�N�g��", 200, 505, 0,Dxl3,false);
	Move("�G�}�X�N�g�E", 200, 505, 0,Dxl3,false);
	Zoom("�G�}�X�N��",200,0,1000,Dxl3,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
&.&.&.&.&.

&.&.&.&.&.!?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_sigh");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/5000220a01">
"Seriously&.&.&.?"

{
	Fw("fw�m�C�Y_�ʏ�_normal2");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/5000230a03">
"And this?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0072]
Noiz shows me a package he was holding&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_sigh2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/5000240a01">
"A crepe&."

{
	Fw("fw�m�C�Y_�ʏ�_normal");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/5000250a03">
"This?"

{
	Fw("fw���t_�ʏ�_sigh3");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/5000260a01">
"Deep fried doughnuts&."

{
	Fw("fw�m�C�Y_�ʏ�_normal2");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/5000270a03">
"Huh&. They all have weird names&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_sigh");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/5000280a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0091]
I give Noiz another confused stare&.

But it doesn't seem like he's making fun of me&.

I knew this guy was different&, but I didn't think he 
wouldn't know the names of foods that even kids and 
old people back home knew about&.&.&.

{
	CreateSE("SE02","se����_��_�ۂ߂�01");
	MusicStart("SE02",0,600,0,1400,null,false);
}
Noiz stares at the crepe and deep fried doughnuts which I 
have in my hands&, and eats a doughnut in one bite&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�m�C�Y_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0092]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/5000290a03">
"It's sweet&."

{
	Fw("fw���t_�ʏ�_sigh2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/5000300a01">
"Of course it is&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�m�C�Y_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/5000310a03">
"But it's not bad&."

{
	Fw("fw���t_�ʏ�_fake");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/5000320a01">
"That's good&.&.&. but what the heck have you been eating till now?"

{
	Fw("fw�m�C�Y_�ʏ�_normal3");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/5000330a03">
"Delivery pizza or pasta&."

{
	Fw("fw���t_�ʏ�_shock2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/5000340a01">
"Only that?"

{
	Fw("fw�m�C�Y_�ʏ�_normal");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/5000350a03">
"Only that&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0110]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/5000360a01">
"Wouldn't you normally get bored of that stuff?"

{
	Fw("fw�m�C�Y_�ʏ�_normal3");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/5000370a03">
"Not really&. I've always been okay with everything that
 tastes good&."

{
	Fw("fw���t_�ʏ�_sigh");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/5000380a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0111]
He isn't just a little weird&.

He's a complete weirdo&.&.&.&.

Feeling strangely exhausted&, I eat one of the octopus 
dumplings I'm holding&.

I guess I am kinda hungry&.
After having not eaten in a while&, it tastes pretty good&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureEX("�G�d�u120", 120, Center, Middle, "cg/ev/ev215�m�C�Y�ƃt�[�h�R�[�g.jpg");
	Fade("�G�d�u120", 500, 1000, null, true);

	Wait(300);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0120]
I always thought that Platinum Jail only had fancy 
restaurants&, but apparently it has this kind of stuff too&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0121]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/5000390a01">
"They even had pancakes stuffed with bean jam&.&.&. I'm sort
 of impressed&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�͂�01");
	MusicStart("SE01",0,600,0,800,null,false);

	CreateTextureEX("�G�d�u121", 121, -1022, 0, "cg/ev/l/ev215�m�C�Y�ƃt�[�h�R�[�g_l.jpg");
	Move("�G�d�u121", 500, -778, -77, Dxl1, false);
	Fade("�G�d�u121", 500, 1000, Dxl1, true);
	Delete("�G�d�u120");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0122]
While I was looking at the other shops&, my right arm was 
suddenly grabbed&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureEX("�G�d�u124", 124, Center, Middle, "cg/ev/ev215�m�C�Y�ƃt�[�h�R�[�gb.jpg");
	CreateTextureEX("�G�d�u123", 123, Center, Middle, "cg/ev/ev215�m�C�Y�ƃt�[�h�R�[�ga.jpg");
	CreateTextureEX("�G�d�u122", 122, -778, -77, "cg/ev/l/ev215�m�C�Y�ƃt�[�h�R�[�ga_l.jpg");
	Fade("�G�d�u122", 500, 1000, Dxl1, true);
	Delete("�G�d�u121");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0123]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/5000400a01">
"Hm? &.&.&.Whoa!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Move("�G�d�u122", 500, -670, -156, Dxl3, false);
	Fade("�G�d�u123", 500, 1000, Dxl3, true);
	Delete("�G�d�u122");

	CreateSE("SE01","se�[��_�R�~�J��_�|�C01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("�G�d�u124", 500, 1000, Dxl3, true);
	Delete("�G�d�u123");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0124]
The octopus dumpling I was about to eat&.&.&.!

//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/5000410a01">
"Hey&, what are you doing!"

//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/5000420a03">
"Salty&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateTextureEX("�G�d�u125", 125, -421, 0, "cg/ev/m/ev215�m�C�Y�ƃt�[�h�R�[�gb_m.jpg");
	Move("�G�d�u125", 500, -300, 0, Dxl1, false);
	Fade("�G�d�u125", 500, 1000, Dxl1, true);
	Delete("�G�d�u124");

//	Fw("fw���t_�ʏ�_cranky");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0130]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/5000430a01">
"Of course it is&. Are you a kid or something? Just how old
 are you&, kiddo?"

//{	Fw("fw�m�C�Y_�ʏ�_normal3");}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/5000440a03">
"Nineteen&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	Fw("fw���t_�ʏ�_cranky");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0131]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/5000460a01">
"Hmmm&, nineteen&, huh&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FadeDelete("�G�d�u*", 500, null, true);

//�����̃Z���t�Ƃ̊Ԃ������e���|�u��
	Wait(1000);

	Fw("fw���t_�ʏ�_shout2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0140]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/5000480a01">
"&.&.&.Wha!?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//���\���䎌�̗p�̏ꍇ�A�ȉ��𒲐����܂��B

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0141]
Nineteen!?

I stare at Noiz&.

I was always sure he was younger than me&, but he's under 
twenty&.&.&.!?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	St("C",740, @0,@0,"fu�m�C�Y_�ʏ�_angry");
//	FadeSt("C",200,true);

	Fw("fw�m�C�Y_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0150]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/5000490a03">
"What?"

{
	Fw("fw���t_�ʏ�_fake");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/5000500a01">
"&.&.&.No&, I was just thinking about how young you are&."

{
	Fw("fw�m�C�Y_�ʏ�_normal2");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/5000510a03">
"How old are you?"

{
	Fw("fw���t_�ʏ�_normal2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/5000520a01">
"Twenty-three&."

{
	Fw("fw�m�C�Y_�ʏ�_normal3");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/5000530a03">
"Almost the same&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0160]
Like hell it is!

I've been constantly thinking that he's weird&, was it 
because of this? Age?

The gap between his calm deposition and appearance&.&.&.

Hey doesn't that leave me at the mercy of a younger person?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureEX("�G�d�u131", 131, Center, Middle, "cg/ev/ev215�m�C�Y�ƃt�[�h�R�[�gc.jpg");
	CreateTextureEX("�G�d�u130", 130, -798, -129, "cg/ev/l/ev215�m�C�Y�ƃt�[�h�R�[�gc_l.jpg");
	Move("�G�d�u130", 500, -889, -79, Dxl1, false);
	Fade("�G�d�u130", 500, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0161]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/5000540a01">
"&.&.&.Hmmn?"

Then the letters on the notification monitors that appear  everywhere in the city catch my eye&.

'A special commemorative event&.'

This is Toue's event that Granny was telling me about&.&.&.

//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/5000550a01">
"Hey&, Noiz&. Isn't that&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Move("�G�d�u130", 500, -740, -152, Dxl1, false);
	Fade("�G�d�u131", 500, 1000, null, true);
	Delete("�G�d�u130");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0170]
I look towards Noiz.

&.&.&.But again&, nobody's there&.

{
	FadeDelete("�G�d�u131", 250, null, true);
}
&.&.&.He disappeared again&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_rage");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0171]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/5000560a01">
"That doofus&.&.&. Where did he go this time?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_����03");
//	CreateSE("SE01","se�l��_����_����03");
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0172]
Feeling like a parent searching for a missing child&, I 
bolt off in search of him&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("SE*", 2000, 0, null);

	CreateColorSP("�G����", 25000, "BLACK");
	DrawTransition("�G����", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Wait(500);

//�����t�@�C��["dm2160.nss"]


//	ClearFadeAll(1000, true);

}
