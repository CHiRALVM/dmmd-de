//<continuation number="260">
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


scene dm2110.nss_MAIN
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
	#bg302021_5_�O���b�^�[����=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm2120.nss";

	//�����Ƀ��x���ݒ�
	$HALevel=2;

}


scene dm2110.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

//�������u���o�F�u�����o�v
	PrintBG("��w�i", 30000);

	CreateColorSP("�G�F��", 5000, "000000");

	OnBG(10,"bg302021_5_�O���b�^�[���ԓV��");
	FadeBG(0,true);

/*
	CreateTextureSP("�G��", 100, Center, Middle, "cg/bg/bg302021_5_�O���b�^�[���ԓV��.jpg");

	SetShade("�G��", MEDIUM);

	Delete("��w�i");
	Fade("�G�F��", 2000, 0, null, true);

	Wait(300);

	Fade("�G�F��", 0, 1000, null, false);
	DrawTransition("�G�F��", 100, 0, 1000, 50, Dxl1, "cg/data/slide_05_00_0.png", true);
	Fade("�G��", 0, 500, null, true);
	Wait(30);
	DrawTransition("�G�F��", 100, 1000, 0, 50, Dxl1, "cg/data/slide_05_00_0.png", true);

	Wait(500);

	Fade("�G�F��", 0, 1000, null, false);
	DrawTransition("�G�F��", 100, 0, 1000, 50, Dxl1, "cg/data/slide_05_00_0.png", true);
	Wait(30);
	DrawTransition("�G�F��", 100, 1000, 0, 50, Dxl1, "cg/data/slide_05_00_0.png", true);


	Wait(100);

	Fade("�G�F��", 0, 1000, null, false);
	DrawTransition("�G�F��", 100, 0, 1000, 50, Dxl1, "cg/data/slide_05_00_0.png", true);
	Wait(30);
	Delete("�G��");
	DrawTransition("�G�F��", 100, 1000, 0, 50, Dxl1, "cg/data/slide_05_00_0.png", true);
	Delete("�G�F��");

	Wait(500);
*/

	Delete("��w�i");

	DrawTransition("�G�F��", 500, 1000, 700, 200, AxlDxl, "cg/data/slide_05_00_0.png", true);
	Wait(500);
	DrawTransition("�G�F��", 500, 700, 1000, 200, AxlDxl, "cg/data/slide_05_00_0.png", true);
	Wait(1000);
	DrawTransition("�G�F��", 1500, 1000, 0, 200, AxlDxl, "cg/data/slide_05_00_0.png", true);

	Wait(500);

	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/1000010a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
I push up my heavy eyelids and blink several times&.

&.&.&.What time is it?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�������u�R�C���F�����f�ނ���H�v
//�e�F�R�C�����o�͌��
	CreateSE("SE01","se����_�R�C��_���쉹01");
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
I raise my hand and look at my Coil's clock&. It's midnight&.

So I sat down on the sofa and fell asleep&, just like that&.&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�e�F���ɉ��o
	HAFade(2000, 0,true);

//	Wait(200);

	Fw("fw���t_�ʏ�_pain2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/1000020a01">
"&.&.&.Ngh&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0015]
I can feel a dull pain in my head&.

I have a feeling I had some kind of dream&.&.&. but I can't 
remember what it was&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
My throat is dry&.
Let's just get some water&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_����01");
	MusicStart("SE01",0,700,0,1000,null,false);
	OnBG(10,"bg302051_5_�O���b�^�[�G���g�����X");
	FadeBG(500,true);

//	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
When I rise from the sofa&, I realize Ren isn't around&.

Huh? Where did he go?

He's supposed to be always at my feet&.

{
	CreateSE("SE01","se����_�R�C��_���쉹03");
	MusicStart("SE01",0,200,0,1000,null,false);
}

&.&.&.I heard something just now&.

Was it from the second floor?


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("SE*", 1000, 0, null);

//	CreateSE("SE02","se�l��_����_����05");
//	MusicStart("SE02",0,350,0,1000,null,false);
	OnBG(10,"bg302021_5_�O���b�^�[����");
	FadeBG(1000,true);
//	SetVolumeEX("SE*", 1000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0028]
I climb the stairs and see Noiz's on the sofa&.

On the second floor is a small living room&, with a 
television and a bar counter&.

It looks like there are rooms heading down the hallway&.

But&.&.&. what's Noiz doing?

Even if he did notice me walking up the stairs&, he doesn't show it and continues facing the other way&.

Maybe he's the type who doesn't notice his surroundings 
when he concentrates&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SoundPlay("@dm007a",0,450,true);

	CreatePlainSP("�G��", 5000);
	CreateTextureSP("�G�w�i", 100, Center, Middle, "cg/bg/m/bg302021_5_�O���b�^�[����_m.jpg");
	Move("�G�w�i", 0, @0, @-60, null, true);

	Move("�G�w�i", 500, @0, @-50, Dxl1, false);
	FadeDelete("�G��", 500, null, true);

//	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
I approach the sofa and slowly peek around Noiz from behind&.&.&. and what I see leaves me speechless&.

&.&.&.Ren!

Noiz has Ren sitting upside down in his lap while he holds a tool over him&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


	Fw("fw���t_�ʏ�_rage");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/1000030a01">
"What are you doing!?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0034]
I yell without thinking&, and Noiz slowly turns around to 
face me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�m�C�Y_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0035]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/1000040a03">
"Oh&, so you were here&."

{	Fw("fw���t_�ʏ�_shout");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/1000050a01">
"Don't give me that! Let Ren go! Hand him over!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureEX("�G�ꖇ�G", 1001, -120, -160, "cg/ev/m/ev004���@�N��_m.jpg");
	CreateSE("SE01","se�퓬_�Ō�_�q�b�g��01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(200);
	CreateSE("SE02","se�l��_����_�ߎC��01");
	MusicStart("SE02",0,700,0,1300,null,false);
	Move("�G�ꖇ�G", 500, @0, @-50, Dxl1, false);
	Fade("�G�ꖇ�G", 500, 1000, Dxl1, true);

	Delete("�G�w�i");

	CreateTextureSP("�G�ꖇ�G��", 1000, -120, -210, "cg/ev/m/ev004���@�N��a_m.jpg");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
I lean over the backrest of the sofa and pick up the blue 
lump from Noiz's lap&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Wait(1800);
	CreateSE("SE01","se����_����_�@�N��01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(500);
	FadeDelete("�G�ꖇ�G", 500, Dxl1, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
Worried&, I immediately try to start up Ren&. It takes a bit longer than usual&, but Ren finally opens his eyes&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	Fw("fwAM�@_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm21/1000060a06">
"Aoba&."

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/1000070a01">
"Are you okay? Do you feel strange anywhere?"

{	DeleteFw();}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm21/1000080a06">
"No problems&."

{	Fw("fw���t_�ʏ�_normal2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/1000090a01">
"Really&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	FadeDelete("�G�ꖇ�G��", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
I'm genuinely relieved that Ren is all right&. But my 
feelings of relief revert back to anger and I glare at 
Noiz&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_angry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/1000100a01">
"You&.&.&. What were you doing to Ren?"

{	Fw("fw�m�C�Y_�ʏ�_normal");}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/1000110a03">
"I wasn't doing anything&."

{	Fw("fw���t_�ʏ�_rage");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/1000120a01">
"Liar&. You obviously did something&."

{	Fw("fw�m�C�Y_�ʏ�_normal2");}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/1000130a03">
"I did&, but I didn't do anything that would cause any
 problems&. And you&, you're the weird one here&."

{	Fw("fw���t_�ʏ�_angry");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/1000140a01">
"How so?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�m�C�Y_�ʏ�_cool2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/1000150a03">
"I said it when the Drive-By happened&. You're getting all
 pissy just over an Allmate&. That's pretty lame&."

{	Fw("fw���t_�ʏ�_shout");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/1000160a01">
"Guh&, what the hell&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�m�C�Y_�ʏ�_normal");
	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0063]
I lower Ren to the floor&, walk around the sofa&, and stand 
in front of Noiz&.

I can't just let him say that&.

I try to grab him by the collar&, but I see something that 
startles me&.

{	SetVolumeEX("@dm*", 3000, 0, null);}
&.&.&.Blood&.

Blood is flowing from Noiz's fingers&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0065]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/1000170a01">
"! You&, that&.&.&. You got hurt!?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�m�C�Y_�ʏ�_normal3");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/1000180a03">
"Yeah&. I got knicked by the tool&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071]
Maybe when I picked up Ren&, he&.&.&.?

There were no other times he could've injured himself&. 
When I peeped over him&, he wasn't hurt&.&.&.

That means&.&.&. it was my fault&.

My anger quickly changes to awkwardness&.

I don't think I can bring myself to hit an injured person&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FwPro("fw���t_�ʏ�_sad",4400,"fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0078]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/1000190a01">
"&.&.&.Sorry&. It's my fault&, I'll apologize for that&. Show
 me the injury&. First off&, we have to stop the bleeding-"

{	St("C",740, @0,@0,"bu�m�C�Y_�ʏ�_normal2");
	FadeSt("C",200,true);}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/1000200a03">
"It's fine&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/1000210a01">
"No&, it isn't&. Show me&."

{	St("C",740, @0,@0,"bu�m�C�Y_�ʏ�_cool2");
	FadeSt("C",200,true);}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/1000220a03">
"It is&."

{	Fw("fw���t_�ʏ�_shout2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/1000230a01">
"Come on&, it's not fine&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

//���r�d�F�p���A�Ǝ�𕥂���
	CreateSE("SE01","se�l��_����_����01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 200, 10, 0, 0, 0, 500, null, true);
	Delete("�G��");

	Wait(200);

//	CreateColorSP("�G�F��", 4000, "FFFFFF");
//	Wait(30);
	St("C",740, @0,@0,"bu�m�C�Y_�ʏ�_angry");
	FadeSt("C",200,true);
//	FadeDelete("�G�F��", 70, null, true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0083]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/1000240a03">
"Don't touch me&. I'll do it myself&."

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/1000250a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
I feel a brief pain and realize that the hand I reached 
out to Noiz with was just slapped away&.

Dumbfounded&, I stare at Noiz like a total idiot&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	DeleteAllSt(200,true);

	CreateSE("SE02","se�l��_����_����06");
	MusicStart("SE02",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0099]
Noiz rises from the sofa and walks towards the hallway&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/1000260a01">
"&.&.&.Hey&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����t�@�C��["dm2120.nss"]

}
