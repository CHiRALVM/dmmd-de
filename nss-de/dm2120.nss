//<continuation number="120">
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


scene dm2120.nss_MAIN
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
	#bg302041_5_�O���b�^�[�L��=true;
	#bg302011_5_�O���b�^�[����01=true;
	#bg302011_5_�O���b�^�[����01�V��=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm2130.nss";

}


scene dm2120.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

/*
	OnBG(10,"bg302041_5_�O���b�^�[�L��");
	FadeBG(0,true);

	FadeDelete("��w�i", 1000, null, true);

	Wait(300);

	CreateSE("SE01","se����_�h�A��_���J��01b");
	MusicStart("SE01",0,700,0,1000,null,false);
*/

	OnBG(10,"bg302021_5_�O���b�^�[����");
	FadeBG(0,true);

	CreateSE("SE01","se����_�h�A��_���J��01b");
	MusicStart("SE01",0,700,0,1000,null,false);

	Delete("��w�i");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
&.&.&.I hear the sound of a door closing&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/2000010a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
Maybe I made him angry&.

&.&.&.It sure looked like I did&.

I can't forgive him for tampering with Ren without 
permission&, but that isn't a reason to hurt anyone&.

There was a lot of blood&, too&.&.&.

A strange feeling of guilt pricks at me&, and I look at Ren&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SoundPlay("@dm012",0,450,true);
//	OnBG(10,"bg302021_5_�O���b�^�[����");
//	FadeBG(1000,true);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/2000020a01">
"Ren&. Are you really okay?"

{	Fw("fwAM�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm21/2000030a06">
"Yeah&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/2000040a01">
"What did he do?"

{	Fw("fwAM�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm21/2000050a06">
"He seemed to be checking my performance&."

{	Fw("fw���t_�ʏ�_shock");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/2000060a01">
"Only that?"

{	Fw("fwAM�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm21/2000070a06">
"And it seems I was infected with a worm program in the
 last Drive-By&."

{
	FwPro("fw���t_�ʏ�_normal2",1600,"fw���t_�ʏ�_shock2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/2000080a01">
"A worm&.&.&. Seriously?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwAM�@_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm21/2000090a06">
"Yes&. When I received the attack&. It didn't seem to be
 active even under the current conditions&, but he
 removed it&."

{	Fw("fw���t_�ʏ�_sad");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/2000100a01">
"So that's what it was&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
So in other words&, it was nothing but something good for 
Ren&.

I should've thanked him instead of getting angry&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/2000110a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0034]
&.&.&.Agh&, dammit&.

I&.&.&. The blood was just rushing to my head&, and I did 
something really stupid&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
I want to apologize now&, but&.&.&.
The way he acted a while ago was like a complete refusal&.

He must be pretty angry at me now&.

Knowing him&, he probably won't even listen to my poor 
excuse of an apology now&.

It would probably just make him even more angry&.

What do I do?

Do I go apologize&, or do I just give up&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);
	CreateTextureSP("�G�w�i", 100, -256, -204, "cg/bg/m/bg302021_5_�O���b�^�[����_m.jpg");

	CreateSE("SE01","se����_�x�b�h_�Q��01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("�G�w�i", 500, -256, -254, Dxl1, false);
	FadeDelete("�G��", 500, null, true);

//	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
I sit on the sofa&, cradling Ren in my arms&.

&.&.&.Noiz&.
I really don't understand him&.

I don't know if he's a good guy&, a bad guy&, or 
something in between&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

/*
	CreatePlainSP("�G��", 5000);

	CreateTextureSP("�G�w�i", 100, Center, Middle, "cg/bg/m/bg302041_5_�O���b�^�[�L��_m.jpg");

	OnBG(10,"bg302041_5_�O���b�^�[�L��");
	FadeBG(0,true);

	Move("�G�w�i", 2000, @-256, @0, Dxl1, false);
	FadeDelete("�G��", 1500, null, true);

	Wait(1000);
*/

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0044]
I turn my eyes to the door of the room Noiz entered&.

&.&.&.I really should apologize&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��01");
	MusicStart("SE01",0,550,0,1200,null,false);

/*
//	CreateColorSP("�G����", 25000, "BLACK");
//	DrawTransition("�G����", 500, 0, 1000, 100, Dxl1, "cg/data/blind_01_00_0.png", true);

	Delete("�G�w�i");

	DrawDelete("�G����", 500, 100, Dxl1, "blind_01_00_1", true);

	Wait(500);

	CreateSE("SE01","se����_�h�A��_�m�b�N�������01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(1500);
*/

	OnBG(10,"bg302041_5_�O���b�^�[�L��");
	FadeBG(0,true);

	FadeDelete("�G�w�i", 1000, null, true);

	Wait(1000);

	CreateSE("SE01","se����_�h�A��_�m�b�N�������01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(1500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0045]
Standing in front of Noiz's room&, I try knocking lightly&.

&.&.&.No answer&.

He must be really angry&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_sad");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/2000120a01">
"&.&.&.I'm sorry&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Wait(1000);

	CreateSE("SE01","se����_�h�A��_���J��01");
	MusicStart("SE01",0,700,0,1000,null,false);
	OnBG(10,"bg302011_5_�O���b�^�[����01");
	FadeBG(1000,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
I quietly muttered an apology and entered the next room&.

Inside is a neat&, simple bedroom&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se����_�x�b�h_�Q��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	OnBG(10,"bg302011_5_�O���b�^�[����01�V��");
	FadeBG(500,true);

/*
	Wait(300);

	CreateColorEX("�G�F��", 5000, "000000");
	Fade("�G�F��", 1500, 500, null, true);

	Wait(300);
*/

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0053]
I lower Ren onto the bed and lie down next to him&.

{
	CreateColorEX("�G�F��", 5000, "000000");
	Fade("�G�F��", 700, 1000, null, true);
}
I take a long&, deep breath and close my eyes&. I can still 
feel a slight trace of a headache&.

I did something awful to Noiz&.
I'm worried about his injury&, too&.&.&.

&.&.&.I'll properly apologize to him tomorrow&.

Not to mention the fact that we also have to collect more 
info on Toue tomorrow&, too&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	Fade("�G�F��", 2000, 800, null, false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
Thinking in dribs and drabs&, my consciousness fades and I 
fall asleep again&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);
	ClearFadeAll(2000, true);
	Wait(2000);

//�����t�@�C��["dm2130.nss"]

}
