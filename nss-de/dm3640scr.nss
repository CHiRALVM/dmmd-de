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


scene dm3640scr.nss_MAIN
{
$TEXTBOX_TYPE="�\�I";
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
	#ev364�~���N�ߔ�=true;
	#ev364�~���N�ߔ�a=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm3650.nss";

}


scene dm3640scr.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	CreateColorSP("�G�F��", 5000, "000000");

	OnBG(10,"bg204031_0_�\�I�~���N�q�Ɍ�");
	FadeBG(0,true);

	CreatePlainEXsub("�G��", 20);
	Zoom("�G��", 0, 1010, 1010, null, true);
	Move("�G��", 0, @0, 10, null, true);
	Fade("�G��", 0, 1000, null, true);

	Delete("��w�i");
	FadeDelete("�G�F��", 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
Beyond the door was a small&, square room&.

It's as rusty as the warehouse before&, but there's a large mass of a person in the middle of the room&.

When I look closer&, I see thick and sturdy chains are 
tightly wound around him&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	FadeDelete("�G��", 3000, DxlAuto, false);
	Zoom("�G��", 3000, 2000, 2000, DxlAuto, false);
	Zoom("@OnBG*", 3000, 2000, 2000, DxlAuto, false);

	CreateColorSP("�G�F��", 5000, "000000");
	DrawTransition("�G�F��", 2000, 0, 500, 100, null, "cg/data/slide_05_00_0.png", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
In the darkness&, something peeks through a gap in the pile of chains&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DrawTransition("�G�F��", 2000, 500, 750, 100, null, "cg/data/slide_05_00_0.png", false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
Their narrowed eyes&, staring&.&.&. the sight of them takes 
my breath away for a short moment&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureEX("�G�d�u", 1100, Center, Middle, "cg/ev/l/ev364�~���N�ߔ�_l.jpg");
	Request("�G�d�u", Smoothing);
	Fade("�G�d�u", 1000, 1000, null, true);

	CreateProcessEX("�v���Z�X", "Proc_dm3640scr_01Act");
	Request("�v���Z�X", Start);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0015]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm36/4000010a01">
"Mink&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	SoundPlay("@dm017",0,450,true);//�\�I

	Request("�v���Z�X", Stop);

	if($Proc_dm3640scr_01Act==true){
	}else{
	CreatePlainSP("�G��", 10000);
	Zoom("@�G�d�u", 0, 500, 500, null, false);
	Delete("�G�F��");
	FadeDelete("�G��", 500, null, true);
	}
	$Proc_dm3640scr_01Act=false;
	Delete("�v���Z�X");
	Delete("�G�F��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0016]
Sitting on an iron chair&.&.&. Or rather&, confined to it&.

His face is lowered so I can't see it&, and he doesn't move at all&.

At any rate&, I have to get these chains off of him&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//���r�d�F�΂���ƉΉԂ��U��
	CreateSE("SE01","se�[��_����_�Ή�01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("�G�F��", 4000, "FFFFFF");
	Wait(30);
	BGPlainShake(3990,200,0,20,0,0,1000,null,false);
	FadeDelete("�G�F��", 70, null, true);

	Fw("fw���t_�ʏ�_pain");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm36/4000020a01">
"!?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
The moment my fingers touch the iron chains&, a numbing 
spark runs through me&. I reflexively pull back my hand&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_hard2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm36/4000030a01">
"Fuck-!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0023]
One more time&.&.&.!


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//���r�d�F�΂���ƉΉԂ��U��
	CreateSE("SE01","se�[��_����_�Ή�01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("�G�F��", 4000, "FFFFFF");
	Wait(30);
	BGPlainShake(3990,200,0,20,0,0,1000,null,false);
	FadeDelete("�G�F��", 70, null, true);

{	Fw("fw���t_�ʏ�_pinch");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0024]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm36/4000040a01">
"!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0025]
I really can't do anything&.
It repels me each time I try to touch it&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
I can't help Mink like this&.
What do I&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	Fw("fw���t_�ʏ�_pain");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm36/4000050a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
At that moment&, a thought floated into my head&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	//SetVolumeEX("@dm*", 150, 1, null);
	SetVolumeEX("@dm017", 150, 1, null);

	CreateColorEX("�G�F��", 5000, "000000");
	Fade("�G�F��", 100, 1000, null, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033]
&.&.&.It's rejecting me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm017", 2000, 450, null);

	FadeDelete("�G�F��", 500, null, true);

	CreateTextureEX("�G����", 1120, -340, 0, "cg/ev/l/ev364�~���N�ߔ�_l.jpg");
	Move("�G����", 8000, @0, -288, DxlAuto, false);
	Fade("�G����", 1000, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0034]
This is inside of Mink's head&. Everything is controlled by him and him alone&.

This Mink bound from head to toe is the "true" Mink&.

I didn't understand it when I first touched the chains&, 
but someway or another it was the "true" him telling me 
something&.

Mink&.&.&. is bound to the idea that he "can't move"&.

So that's why it's like this&.

First I have to "destroy" that notion&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FadeDelete("�G����", 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
I once again extend my hand out to Mink&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�͍s�g_serious");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm36/4000060a01">
"Mink&.&.&. You can move&. So hurry up and get out of here&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se����_��_�ӂ���01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("�G�F��", 4000, "FFFFFF");
	Wait(30);
	FadeDelete("�G�F��", 70, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
When I called out to him&, a chain broke apart with a 
crunch&.

I reach for an even larger chain&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����Ɏw���G���ƁA���x�̓V���E�E�E�Ɖ����オ��A���L���L�Ǝw�悩��K�тĂ����B
	CreateSE("SE01","se�[��_���__����01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("�G�F��", 4000, "FFFFFF");
	Wait(30);
	Fade("�G�F��", 70, 0, null, true);
	Wait(30);
	Fade("�G�F��", 0, 1000, null, true);
	Wait(30);
	FadeDelete("�G�F��", 70, null, true);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0044]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm36/4000070a01">
"&.&.&.!?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0045]
When my fingers reach it&, a flame blows up&. Astonished&, I 
pull back&.

{
	CreateSE("SE01","se�[��_���__�K�т�01");
	MusicStart("SE01",0,700,0,1000,null,false);
}
&.&.&.The fingers that touched the chain have changed into a 
dark reddish-brown color&.

And in a flash&, it erodes from my hand up to my arm&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
It's exactly like&.&.&. the rust covering this room&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�������u���o�F�����\��������̂łr�d�����Ɂv

/*
	Fw("fw���t_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm36/4000080a01">
"Ahhhhh&.&.&.!!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);
*/

	CreateVOICE("���t","dm36/4000080a01");
	MusicStart("���t",0,1500,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0052]
Terrified&, I shake my hand and scream&.

The colored area burns like fire&. But it's still cold&.

And I'm already this far&.&.&.

You're going to refuse me even though I've gotten this 
far&.&.&.!?


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("���t", 150, 0, null);

	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0056]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm36/4000090a01">
"&.&.&.Shit&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
Enduring it&, I completely stretch out my hand for Mink&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�����Ɏw���G���ƁA���x�̓V���E�E�E�Ɖ����オ��A���L���L�Ǝw�悩��K�тĂ����B
	CreateSE("SE01","se�[��_���__����01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("�G�F��", 4000, "FFFFFF");
	Wait(30);
	Fade("�G�F��", 70, 0, null, true);
	Wait(30);
	Fade("�G�F��", 0, 1000, null, true);
	Wait(30);
	FadeDelete("�G�F��", 70, null, true);

	CreatePlainSP("�G��", 1190);
	SetBlur("�G��", true, 3, 500, 60, false);

	CreateSE("SE02","se����_��_�L�т�01");
	MusicStart("SE02",0,700,0,1000,null,false);
	CreateMovieSP("�G������", 1990, Center, Middle, false, true, "dx/mv������.ngs");
	FadeFFR3("�G��", 0,900, 2000, 0, 0, 30,null, true);
	Delete("�G��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
Smoke rises from that arm as well&, rusting away&. The 
chains from the chair rise up&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE02","se����_����_�Փ�01");
	MusicStart("SE02",0,700,0,500,null,false);
	CreateColorSP("�G�F��", 4000, "FFFFFF");
	Wait(30);
	FadeDelete("�G�F��", 70, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0062]
The chains coil around Mink and then around my rusting 
arms&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����킪���X�Ɋ����悤�ȁA�K���X���͂�����Əd����
	CreateSE("SE01","se����_��_�ӂ���01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("�G�F��", 4000, "FFFFFF");
	Wait(30);
	BGPlainShake(3990,200,0,20,0,0,1000,null,false);
	FadeDelete("�G�F��", 70, null, true);

{	Fw("fw���t_�ʏ�_pain");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0063]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm36/4000100a01">
"!!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0064]
Both of my arms are&.&.&.
Shattering apart like glass&.

Soon a pain so forceful that it could have knocked me 
out hit me&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�������u���o�F�����\��������̂łr�d�����Ɂv

/*
	Fw("fw���t_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0066]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm36/4000110a01">
"Hiyahhhh&.&.&. Ugah&.&.&. Ahh&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);
*/

	CreateVOICE("���t","dm36/4000110a01");
	MusicStart("���t",0,1500,0,1000,null,false);

	CreatePlainSP("�G��", 5000);

	CreateTextureEX("�G���w�i�O", 20, Center, Middle, "cg/bg/l/bg204031_0_�\�I�~���N�q�Ɍ�_l.jpg");
	Zoom("�G���w�i�O", 0, 500, 500, null, true);
	SetShade("�G���w�i�O", SEMIHEAVY);

	CreateTextureSP("�G���w�i", 15, Center, Middle, "cg/bg/l/bg204031_0_�\�I�~���N�q�Ɍ�_l.jpg");
	Zoom("�G���w�i", 0, 500, 500, null, true);

	CreateSurfaceEX("�G���ʃT�t", 100,2000,"@�G���w�i");
	Fade("�G���ʃT�t", 0, 1000, null, true);
	SetSurface("�G���w�i�O","�G���ʃT�t");
	Move("�G���ʃT�t", 0, @0, -140, null, true);

	MoveFFP1stop();
	MoveFFP2stop();

	MoveFFP1("@�G���w�i�O",20000);
	MoveFFP2("@�G���w�i",25000);

	CreateProcessEX("�v���Z�X", "Proc_dm3640scr_02Act");
	Request("�v���Z�X", Start);

	Move("�G���ʃT�t", 1300, @0, -200, DxlAuto, false);
	Fade("�G������", 0, 0, null, false);
	Fade("�G�d�u", 0, 0, null, true);

	FadeDelete("�G��", 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
It hurts&.

Cold sweats running down my forehead&, my vision goes 
blurry&. My knees drop down to the floor&.

This kind of pain shouldn't be possible&.&.&.this shouldn't&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("���t", 150, 0, null);

	Fw("fw���t_�ʏ�_sad");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0072]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm36/4000120a01">
"&.&.&.Fu&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0073]
Mink sits there silently without moving an inch&.

Why&.&.&.
Why do you reject me&.&.&.

&.&.&.No&.

I'm not going to give up here&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
No matter how much you refuse me&.&.&.
I won't let you be destroyed!


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0081]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm36/4000130a01">
"Urk&.&.&. Ugrahhhh&.&.&.!!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_���01");
	MusicStart("SE01",0,1200,0,1000,null,false);
	Move("�G���ʃT�t", 2000, @0, 0, DxlAuto, false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0082]
I somehow hold my armless self up and stand&.

Once more&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Request("�v���Z�X", Stop);
	MoveFFP1stop();
	MoveFFP2stop();

	CreatePlainSP("�G��", 5000);

	CreateTextureSP("�G�d�u", 1110, -330, -288, "cg/ev/l/ev364�~���N�ߔ�_l.jpg");
	Zoom("�G�d�u", 0, 500, 500, null, true);

	Fade("�G������", 0, 1000, null, true);
	Delete("�G���ʃT�t");
	Delete("�G���w�i*");
	Delete("�v���Z�X");

	Zoom("�G�d�u", 1000, 1000, 1000, Dxl1, false);
	Zoom("�G������", 1000, 1250, 1250, Dxl1, false);

	Zoom("�G��", 1000, 2000, 2000, null, false);
	FadeDelete("�G��", 1000, null, true);

	CreateSE("SE01","se����_��_�L�т�02");
	MusicStart("SE01",0,700,0,500,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0084]
I get closer to Mink and bite at the rusting chains&.

{
	CreateSE("SE02","se����_��_�L�т�02");
	MusicStart("SE02",0,700,0,1000,null,false);
}
I pull on them with my mouth&, trying to tear them off of 
him&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0086]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm36/4000140a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE02","se����_��_�L�т�01");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreatePlainSP("�G��", 1190);
	SetBlur("�G��", true, 3, 500, 60, false);

	CreateMovieSP("�G�������", 1990, Center, Middle, false, true, "dx/mv������.ngs");
	Rotate("�G�������", 0, @0, 180, @0, null,true);
	Zoom("�G�������", 2000, 1050, 1050, null, false);
	FadeFFR3("�G��", 0,900, 2000, 0, 0, 30,null, false);
	FadeFFR2("�G������", 0,900, 2000, 0, 0, 30,null, true);
	Delete("�G��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
More chains aim at me from behind Mink's chair&.

Is it hopeless already&.&.&.?

&.&.&.Mink!!


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//���r�d�F���ɂ΂��΂����ƉΉԂ��U��
	CreateSE("SE01","se�[��_����_�Ή�01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("�G�F��", 4000, "FFFFFF");
	Wait(30);
	BGPlainShake(3990,200,0,20,0,0,1000,null,false);
	FadeDelete("�G�F��", 70, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0093]
At that moment&, Mink's face moved up a bit&.

And then-

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Position("�G�d�u", $x1, $y1);
	CreateTextureEX("�G�d�u�Q", 1110, $x1, $y1, "cg/ev/l/ev364�~���N�ߔ�a_l.jpg");
	Fade("�G�d�u�Q", 1000, 1000, null, true);
	Delete("�G�d�u");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0094]
Mink's closed eyes were looking right at me&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//���΂���Ƌ�����������A�~���N�̐��E����e���o�����
	CreateSE("SE01","se�[��_����_�Ή�02");
	MusicStart("SE01",0,1200,0,1000,null,false);

	SetVolumeEX("@dm*", 150, 0, null);

	PrintGO("��w�i", 20000);
	CreateColorSP("�G�F��", 10, "000000");
	CreateColorSP("�G�F��", 4000, "FFFFFF");
	FadeDelete("��w�i", 0, null, true);
	Wait(30);
	Fade("�G�F��", 70, 0, null, true);
	Wait(10);
	Fade("�G�F��", 0, 1000, null, true);
	Wait(30);
	FadeDelete("�G�F��", 70, null, true);

{	Fw("fw���t_�ʏ�_pain");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm36/4000150a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�������u���o�F����ƁF���̐��E�ɖ߂�q��(2/5)�v
//�������u���o�F�����Ő��_���E����̒E�o���o����܂����A�Ƃ肠����������Łv
	CreateSE("SE01","se�[��_���__�E�o01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorEX("�G�F��", 5000, "FFFFFF");
	Fade("�G�F��", 3000, 1000, Axl2, true);
	Wait(1000);

//�����t�@�C��["dm3650.nss"]

}


/*
	CreateMovieSP("�G������", 1900, 0, 0, true, true, "dx/mv������.ngs");
	Fade("�G������", 0, 800, null, true);

	//CreateTextureSP("�G��", 1000, Center, Middle, "cg/ev/ev364�~���N�ߔ�.jpg");
	CreateColorSP("�G�F��", 10, "FFFFFF");

	WaitKey();

	while(1)
	{

	Request("�G������", Pause);

	WaitKey();

	Request("�G������", Resume);
	Wait(32);

	}

	WaitKey();
*/
