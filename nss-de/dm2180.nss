//<continuation number="540">
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


scene dm2180.nss_MAIN
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
	#ev218�m�C�Y�f�B�[�v�L�X=true;
	#ev218�m�C�Y�f�B�[�v�L�Xa=true;
	#ev218�m�C�Y�f�B�[�v�L�Xb=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm2190h.nss";

}


scene dm2180.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	OnBG(10,"bg302051_5_�O���b�^�[�G���g�����X");
	FadeBG(0,true);

	CreateTextureSP("�G�w�i90", 90, -757, -534, "cg/bg/l/bg302051_5_�O���b�^�[�G���g�����X_l.jpg");

	FadeDelete("��w�i", 0, null, true);

	CreateSE("SE01","se�l��_����_�ߎC��15");
	MusicStart("SE01",0,700,0,1200,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
{	CreatePlainSP("�G��", 990);
	Shake("�G��", 150, 0, 3, 0, 0, 500, null, true);
	Delete("�G��");}
I sit on the sofa and lean on the backrest&, feeling 
exhausted&.

{	Fw("fw���t_�ʏ�_sigh3");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/8000010a01">
"&.&.&.Don't be so reckless&. It makes me nervous&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
I say it with a joking tone on purpose&.
But I'm actually quite serious about it&.

I'd be afraid to see him get really hurt&.

{	Fw("fw���t_�ʏ�_worry4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/8000020a01">
"Anyway&, we have to start collecting information
 about Toue&.&.&."

{	Fw("fw�m�C�Y_�ʏ�_angry2");}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/8000030a03">
"I don't get you&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
Interrupting my words&, Noiz opens his mouth&.

{	Fw("fw�m�C�Y_�ʏ�_angry");}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/8000040a03">
"Is this supposed to mean something?"


{	Fw("fw���t_�ʏ�_normal2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/8000050a01">
"&.&.&.What?"

{	Fw("fw�m�C�Y_�ʏ�_angry");}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/8000060a03">
"This&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��15");
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
Noiz stretches out his hand which had the bandaid&.

{
	SoundPlay("@dm007a",0,450,true);
	Fw("fw�m�C�Y_�ʏ�_angry");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/8000070a03">
"Is there some merit to this?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/8000080a01">
"Huh? Merit?"

{
	Fw("fw�m�C�Y_�ʏ�_pride2");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/8000090a03">
"&.&.&.Ahh&. So there is&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
Noiz added some mockery at the end&.

{
	Fw("fw�m�C�Y_�ʏ�_pride");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/8000100a03">
"If you have me&, the future'll be a breeze&. As long as
 I'm useful it's enough&."

{
	Fw("fw���t_�ʏ�_angry");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/8000110a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
I know he's been thinking this since yesterday&, but&.&.&.

What the heck is he talking about?

I'm the one who doesn't understand&.

{
	Fw("fw���t_�ʏ�_worry3");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/8000120a01">
"&.&.&.Do you even know what you're saying?"

{
	Fw("fw�m�C�Y_�ʏ�_angry");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/8000130a03">
"You wouldn't normally do things like this without a
 purpose&. I'm a total stranger&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
Noiz shakes his injured hand&.

{
	Fw("fw�m�C�Y_�ʏ�_angry2");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/8000140a03">
"Like helping others&. There's nothing to gain from it&, it's inefficient&, and it won't give you any benefits&."

{
	Fw("fw���t_�ʏ�_worry4");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/8000150a01">
"So you're saying I have ulterior motives&, and want
 something from you in return?"

{
	Fw("fw�m�C�Y_�ʏ�_angry");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/8000160a03">
"Am I wrong?"

{
	Fw("fw���t_�ʏ�_angry");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/8000170a01">
"You are!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
The bottom of my stomach hurts&.

{
	Fw("fw���t_�ʏ�_angry");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/8000180a01">
"You're wrong&. You can want to help people out of worry&, or other things like that&."

{
//	Fw("fw�m�C�Y_�ʏ�_angry3");
	FwPro("fw�m�C�Y_�ʏ�_angry3",6200,"fw�m�C�Y_�ʏ�_normal3");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/8000190a03">
"I don't understand&. I can't understand at all&. &.&.&.Oh&,
 or maybe&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE02","se�l��_����_�ߎC��15");
	MusicStart("SE02",0,700,0,800,null,false);

	Fade("�G�w�i90", 250, 0, null, true);

	St("C",740, @0,@0,"bu�m�C�Y_�ʏ�X�q�Ȃ�_normal");
	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
Noiz violently rips off his hat and comes around the sofa 
to stand in front of me&.

What&, is he going to hit me?

I try to stand up to prepare myself&.

{
	SetVolumeEX("@dm*", 500, 0, null);
}
&.&.&.But&.

Noiz's actions&.&.&. are far beyond what I'd imagined&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��18");
	MusicStart("SE01",0,500,0,1000,null,false);

	DeleteAllSt(200,true);

	Wait(500);

	Fade("�G�w�i90", 1000, 1000, null, true);

	Wait(1000);

	CreateSE("SE01","se�l��_����_�L�X01");
	MusicStart("SE01",0,500,0,1000,null,false);

	Wait(500);

//	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/8000200a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,700,0,1000,null,false);

	SetVolumeEX("SE*", 1000, 0, null);

	CreateTextureEX("�G�d�u100", 100, -258, -73, "cg/ev/m/ev218�m�C�Y�f�B�[�v�L�X_m.jpg");
	Move("�G�d�u100", 1000, -258, -125, Dxl3, false);
	Fade("�G�d�u100", 1000, 1000, null, true);

	Wait(300);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/8000210a03">
"Something like this?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SoundPlay("@dm005",0,450,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
&.&.&.&.&.

&.&.&.&.&.

&.&.&.!?

&.&.&.No no no no!!

What!?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��02");
	MusicStart("SE01",0,500,0,1200,null,false);

	Move("�G�d�u100", 250, @0, @-80, Dxl3, false);
	Fade("�G�d�u100", 250, 0, null, true);

	Fw("fw���t_�ʏ�_rage");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/8000220a01">
"W-Wha&, What are you doing!? That's weird!"

{
	Fw("fw�m�C�Y_�ʏ�X�q�Ȃ�_normal");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/8000230a03">
"What is?"

{
	Fw("fw���t_�ʏ�_rage");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/8000240a01">
"Kissing me like that!"

{
	Fw("fw�m�C�Y_�ʏ�X�q�Ȃ�_normal3");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/8000250a03">
"There's no other purpose to use me other than this&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/8000260a01">
"Then what is 'this'!?"

{
	Fw("fw�m�C�Y_�ʏ�X�q�Ȃ�_normal2");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/8000270a03">
"You were going for me&."

{
	Fw("fw���t_�ʏ�_shout2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/8000280a01">
"Whaa!?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	DeleteAllSt(200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
Seriously&. Really&.
Is he serious?

How the heck did he get to that conclusion!?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,700,0,1000,null,false);

	SetVolumeEX("SE*", 1500, 0, null);

	CreateTextureEX("�G�d�u100", 100, Center, Middle, "cg/ev/m/ev218�m�C�Y�f�B�[�v�L�X_m.jpg");
	Move("�G�d�u100", 500, @0, @50, Dxl1, false);
	Fade("�G�d�u100", 500, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0091]
Right when I stop that train of thought&, Noiz brings his 
face closer again&.

//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/8000290a01">
"Hey&, wait a minute&, you brat! Wait!"

//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/8000300a03">
"Shut up&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	OnBG(10,"bg302021_5_�O���b�^�[���ԓV��");
	FadeBG(0,true);

	CreateSE("SE01","se�l��_����_����01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se����_�x�b�h_�Q��01");
	MusicStart("SE02",0,700,0,1000,null,false);

	Move("�G�d�u100", 250, @80, @0, Dxl1, false);
	FadeDelete("�G�d�u100", 250, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0092]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/8000310a01">
"Mmh&.&.&. Ngh!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0093]
My head is drawn near to him and my lips are stopped by 
force&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��15");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 150, 0, 5, 0, 0, 500, null, true);
	Delete("�G��");

//	Fw("fw���t_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0094]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/8000320a01">
"Ngh&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//	SetVolumeEX("@dm*", 2000, 0, null);
//	SoundPlay("@dm012",0,450,true);

	CreateTextureEX("�G�d�u102", 102, Center, Middle, "cg/ev/ev218�m�C�Y�f�B�[�v�L�Xb.jpg");
	CreateTextureEX("�G�d�u101", 101, -510, -281, "cg/ev/m/ev218�m�C�Y�f�B�[�v�L�Xa_m.jpg");
	Move("�G�d�u101", 1000, -333, -127, Dxl1, false);
	Fade("�G�d�u101", 1000, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
I try to push him away with both hands&, but he catches my 
jaw and forcibly opens my mouth&.

He puts in his tongue&.&.&. and a light numbness runs down my spine&.

//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/8000340a01">
"&.&.&.Ngh&."

{
	SetVolumeEX("@dm*", 2000, 0, null);
	SoundPlay("@dm012",0,450,true);
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/8000330a03">
"&.&.&.&.&.&, Nhh&.&.&."

Noiz's tongue rubs my palate and entwines with my own&.

This is kinda dangerous&.&.&.

Wait a sec&, this is&.&.&.

Whenever Noiz's tongue wriggles in my confused mouth&, 
something hits my tooth&, making a ticking noise&.

What's that sound&.&.&.?


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	OnBG(10,"bg302051_5_�O���b�^�[�G���g�����X");
	FadeBG(0,true);

	Move("�G�d�u101", 500, -259, -76, Dxl1, false);
	Fade("�G�d�u102", 500, 1000, null, true);
	Delete("�G�d�u101");

	Wait(300);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0110]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/8000350a01">
"Hu&.&.&. u&.&.&. uh&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0111]
But before I can think any more about it&, I feel something strange in my lower body&.

Shit&.&.&.

His kissing isn't especially good&, but&.&.&.

It's been a long time since I've felt anything like this&, 
and&.&.&.

&.&.&.I'm too much into it&.

//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/8000360a03">
"&.&.&. What&. Are you hard?"

//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/8000370a01">
"!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FadeDelete("�G�d�u*", 500, null, true);

	CreateSE("SE01","se�l��_����_�ߎC��18");
	MusicStart("SE01",0,700,0,1400,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0112]
Noiz pulls out his tongue and pushes his knee up into 
my crotch&.

Him doing that actually makes me react a little bit&.

{
	Fw("fw���t_�ʏ�_shy2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/8000380a01">
"Only because you started doing weird things&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�m�C�Y_�ʏ�X�q�Ȃ�_normal2");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0120]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/8000390a03">
"But you got hard from just kissing&, right?"

{
	Fw("fw���t_�ʏ�_shy3");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/8000400a01">
"&.&.&.Uh&.&.&."

{
	Fw("fw�m�C�Y_�ʏ�X�q�Ȃ�_normal2");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/8000410a03">
"What are you gonna do about this? Handle it alone?"

{
	Fw("fw���t_�ʏ�_shy");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/8000420a01">
"Ngh&, I can't help it! It's a physiological reaction!"

{
	Fw("fw�m�C�Y_�ʏ�X�q�Ȃ�_normal");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/8000430a03">
"I'll do it&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0130]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/8000440a01">
"Wha!?"

{
	Fw("fw�m�C�Y_�ʏ�X�q�Ȃ�_normal2");
	SoundPlay("@dm005",0,450,true);
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/8000450a03">
"In return&, do mine&."

{
	Fw("fw���t_�ʏ�_shy");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/8000460a01">
"No no no no&, wait! Stop saying weird things!"

{
	Fw("fw�m�C�Y_�ʏ�X�q�Ȃ�_normal");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/8000470a03">
"How?"

{
	Fw("fw���t_�ʏ�_shy");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/8000480a01">
"You doing mine&, me doing yours&.&.&. That's just weird!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�m�C�Y_�ʏ�X�q�Ȃ�_normal3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0140]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/8000490a03">
"Listen&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0141]
Noiz lets out a tired sigh&.

{
	Fw("fw�m�C�Y_�ʏ�X�q�Ȃ�_normal2");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/8000500a03">
"You're overreacting&. We're both guys&, nothing to be
 ashamed about&. Plus&, you just said it yourself: it's
 a physiological reaction&."

{
	FwPro("fw�m�C�Y_�ʏ�X�q�Ȃ�_normal3",8600,"fw�m�C�Y_�ʏ�X�q�Ȃ�_normal2");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/8000510a03">
"We're just talking about getting rid of a physiological
 reaction&, right? Wouldn't it be more efficient to just do
 it at the same time?"

{
	Fw("fw���t_�ʏ�_rage");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/8000520a01">
"No&, no&, no&, no!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0150]
I don't understand why and how it would be efficient!

What's he going on about? Is he one of those "new age" 
guys?

Is this what the younger people are like now?

But we aren't that many years apart&.&.&.

So maybe he's just weird?!

{
	FwPro("fw���t_�ʏ�_fake",7000,"fw���t_�ʏ�_shock2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/8000530a01">
"Anyway&, I think I'll have to decline&, so let me&.&.&.
 Hey&, wai&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se�l��_����_�ߎC��01");
	MusicStart("SE01",0,700,0,1300,null,false);

	CreateSE("SE02","se�l��_����_�ߎC��15");
	MusicStart("SE02",0,700,0,1300,null,false);

	FadeDelete("�G�w�i90", 250, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0151]
Noiz suddenly pulls on my arm&. 

{
	CreateSE("SE02","se�l��_����_����06");
	MusicStart("SE02",0,700,0,1000,null,false);
	CreateSE("SE03","se�l��_����_����06");
	MusicStart("SE03",0,700,0,1500,null,false);
}
I stand up reluctantly&, and Noiz forces me to walk with 
him&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	OnBG(10,"bg302041_5_�O���b�^�[�L��");
	FadeBG(500,true);

	SetVolumeEX("SE*", 1000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0152]
The destination&.&.&.
Noiz's room&. For sure&.

{
	FwPro("fw���t_�ʏ�_shout2",2300,"fw���t_�ʏ�_pain");
//	Fw("fw���t_�ʏ�_shock2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/8000540a01">
"Hey&, Noiz! &.&.&.Hey&, uwah!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�����t�@�C��["dm2190h.nss"]

}
