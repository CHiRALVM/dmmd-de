//<continuation number="920">
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


scene dm4400lv.nss_MAIN
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
	RainDropDelete(0);//���̃R�}���h�ŉJ�����Ă��������A�O�̂��߂Ƀt�@�C���o�鎞�ɂ��L�ڂ��Ă����ĉ�����
	RainDropDelete2(0);//���̃R�}���h�ŉJ�����Ă��������A�O�̂��߂Ƀt�@�C���o�鎞�ɂ��L�ڂ��Ă����ĉ�����
	RainDropStartDelete();
	$GameName = "dm4401lv.nss";

}


scene dm4400lv.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm006",0,450,true);

	PrintBG("��w�i", 30000);

	OnBG(10,"bg301031_5_�v���`�i�W�F�C���ʂ�H�n01");
	FadeBG(0,true);

	St("C",740, @0,@0,"bu�N���A_�ʏ�}�X�N�Ȃ�_sad");
	FadeSt("C",0,true);

	FadeDelete("��w�i", 0, null, true);

//===========================================
//�ȉ��A����
//===========================================

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/0000010a01">
"No&, you're not okay&. Your face looks awful&, and you can't
 even stand up straight&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/0000020a04">
"&.&.&.&.&."

{
	Fw("fw���t_�ʏ�_worry4");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/0000030a01">
"Clear?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012a]
Clear holds onto his arm and sullenly looks at his feet&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SetVolumeEX("@dm*", 3000, 0, null);

	RainDropStart(740,10);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012b]
The air around us becomes even more wet&, and water 
droplets start to fall onto my head&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


	St("C",740, @0,@0,"bu�N���A_�ʏ�}�X�N�Ȃ�_sad");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/0000040a04">
"&.&.&.I'm sorry&. I didn't want to get you involved&,
 Master&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE�J","se��_���R_���J");
	MusicStart("SE�J",1000,500,0,1200,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0015]
Clear's voice is weak&, and the sound of the water falling 
overpowers it&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/0000050a01">
"Who were those guys back there? They had the same face as
 you&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�N���A_�ʏ�}�X�N�Ȃ�_worry2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021a]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/0000060a04">
"They're&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	RainDropStartConnect(5000);
	RainDrop(750,10000,16);
	RainDrop2(730,10000,64);

//	RainDropDelete(5000);//���̃R�}���h�ŉJ�����Ă�������
//	RainDrop2Delete(5000);//���̃R�}���h�ŉJ�����Ă�������

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021b]
Clear hesistates&, and then goes silent&.

{
	SetVolumeEX("SE�J", 5000, 0, null);
	CreateSE("SE�J2","se��_���R_�J01L");
	MusicStart("SE�J2",7000,200,0,1000,null,true);
}
The sound of the rain gradually grows louder and louder&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SoundPlay("@dm015",0,450,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/0000070a04">
"Master&, you must've realized it by now&. That I'm not
 human&."

{
	Fw("fw���t_�ʏ�_worry3");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/0000080a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	St("C",740, @0,@0,"bu�N���A_�ʏ�}�X�N�Ȃ�_normal");
//	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/0000090a04">
"I'm a man-made artificial being&. I'm a prototype with my
 own serial number&. So those two are like me&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
&.&.&.I thought before that Clear may have not been human&.

And when sparks flew out of his arm&.&.&. that only proved it more&.

But it feels strange when he himself says it&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 5000, 0, null);

	St("C",740, @0,@0,"bu�N���A_�ʏ�}�X�N�Ȃ�_sad");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/0000100a04">
"We are products of Toue's research&. So they were correct
 when they said that 'Toue is our Master&.' But still&.&.&."

{
	St("C",740, @0,@0,"bu�N���A_�ʏ�}�X�N�Ȃ�_worry2");
	FadeSt("C",200,true);
}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/0000110a04">
"Surely you know about Toue's research&. We were created in
 order to control people&." 

//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/0000120a04">
"One of them sang with their Grand Music power&, it's our
 main ability&." 

//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/0000130a04">
"The nature of your special voice has the same properties
 as well&, Master&. However&, we're man-made&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/0000140a01">
"Then&, your song is also&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/0000150a04">
"Yes&. But my song counteracts against their Grand Music&."

{
	St("C",740, @0,@0,"bu�N���A_�ʏ�}�X�N�Ȃ�_sad");
	FadeSt("C",200,true);
}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/0000160a04">
"Of course&, I can also sing Grand Music as well&."

{
	Fw("fw���t_�ʏ�_worry3");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/0000170a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/0000180a04">
"&.&.&.It must be hard to believe me&."

Clear sadly averts his gaze&.

Raindrops hit his face and run down his cheeks&.

The cold rain turns into a downpour and my skin turns cold&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/0000190a01">
"&.&.&.So you were always keeping quiet about this?"

{
	St("C",740, @0,@0,"bu�N���A_�ʏ�}�X�N�Ȃ�_worry");
	FadeSt("C",200,true);
}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/0000200a04">
"No&. You may not believe what I'm about to say&.&.&. but I had forgotten&."

{
	St("C",740, @0,@0,"bu�N���A_�ʏ�}�X�N�Ȃ�_worry2");
	FadeSt("C",200,true);
}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/0000210a04">
"Or rather&, I never had any questions about it&."

//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/0000220a04">
"I had never thought about it seriously&.&.&. But when those
 two called out to me&, I recognized them right away&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�N���A_�ʏ�}�X�N�Ȃ�_sad");
	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/0000230a04">
"We exist as the same thing&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/0000240a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0062]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/0000250a04">
"We were developed as weapons for our masters&."

{
	St("C",740, @0,@0,"bu�N���A_�ʏ�}�X�N�Ȃ�_sad");
	St("C",740, @0,@0,"bu�N���A_�ʏ�}�X�N�Ȃ�_serious2");
	FadeSt("C",200,true);
	FadeStPro("C", 6500, 180);
}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/0000260a04">
"I might even have been a spy&, but I've never been
 suspicious of someone keeping surveillance on me&. But-"

{
	St("C",740, @0,@0,"bu�N���A_�ʏ�}�X�N�Ȃ�_serious2");
	FadeSt("C",200,true);
}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/0000270a04">
"But I will tell you what I honestly think because I want
 to face you and tell you the entire truth&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
Water drips down from his hair&, and then Clear looks at me again&.

{
	St("C",740, @0,@0,"bu�N���A_���ʃ}�X�N�Ȃ�_serious");
	FadeSt("C",200,true);
}
His determined eyes shine in the gloomy atmosphere&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�N���A_���ʃ}�X�N�Ȃ�_serious2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/0000280a04">
"I recognized you as my master because of that voice&. It's
 the same voice as Toue's&, a voice that has the power to
 control people&.&.&."

{
	St("C",740, @0,@0,"bu�N���A_���ʃ}�X�N�Ȃ�_normal2");
	FadeSt("C",200,true);
}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/0000290a04">
"However&, both our existence and Toue's voice come from
 artificial means&. You are different&."

{
	St("C",740, @0,@0,"bu�N���A_���ʃ}�X�N�Ȃ�_sad");
	FadeSt("C",200,true);
}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/0000300a04">
"It's strange&. Is Master&, a human that holds the same power
 as us&, different? Or are we the same?"

{
	St("C",740, @0,@0,"bu�N���A_���ʃ}�X�N�Ȃ�_normal2");
	FadeSt("C",200,true);
}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/0000310a04">
"Whenever I had questions for you&, you would answer them&.
 You told me things that I never knew&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�N���A_���ʃ}�X�N�Ȃ�_normal");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/0000320a04">
"You answer to things I wonder about&. It's the same thing
 that Grandpa did as he raised me&."

{
	St("C",740, @0,@0,"bu�N���A_���ʃ}�X�N�Ȃ�_normal2");
	FadeSt("C",200,true);
}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/0000330a04">
"When I came to learn things&, I felt my eyes light up&. And
 I wanted to listen more&. I wanted to be together more&."

//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/0000340a04">
"That's why I think this way&. Master is a human while I'm
 artificial&."

//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/0000350a04">
"The feelings of wanting to stay together with you weren't
 lies&. I don't know if Toue is my true master&, however&."

{
	St("C",740, @0,@0,"bu�N���A_���ʃ}�X�N�Ȃ�_serious");
	FadeSt("C",200,true);
}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/0000360a04">
"Only you could possibly be my master&." 

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�N���A_���ʃ}�X�N�Ȃ�_serious2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/0000370a04">
"Even though I've only realized all of this now&, my
 feelings won't change&. Those two did say that I was
 broken&, but that's fine with me&."

{
	St("C",740, @0,@0,"bu�N���A_���ʃ}�X�N�Ȃ�_normal2");
	FadeSt("C",200,true);
}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/0000380a04">
"That's why I won't deceive you anymore&. From now on&, of
 course&."

{
	St("C",740, @0,@0,"bu�N���A_���ʃ}�X�N�Ȃ�_normal");
	FadeSt("C",200,true);
}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/0000390a04">
"I want you to at least&.&.&. believe in that&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0091]
&.&.&.The sound of the rain sounds more miserable with his 
last words&.

{
	DeleteAllSt(200,true);
}
My chest hurts&, and I grab at my jacket over it&.

It is definitely a shock that Clear is something made by 
Toue&.

I think of how Clear might have been lying to me the 
entire time&.&.&. and I doubt his words&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
&.&.&.But&.

In my heart&, I don't believe that Clear is lying at all&.

I've never seen Clear as something artificial&.

The figure being drenched by rain with an eager look on 
his face&.&.&. looks exactly like a human to me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�N���A_���ʃ}�X�N�Ȃ�_normal");
	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0101]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/0000400a04">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0102]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/0000410a01">
"&.&.&.Clear&, you're an idiot&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�N���A_���ʃ}�X�N�Ȃ�_normal2");
	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0110]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/0000420a04">
"Master&.&.&."

{
	Fw("fw���t_�ʏ�_normal");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/0000430a01">
"Do you really think I'm that heartless?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	St("C",740, @0,@0,"bu�N���A_���ʃ}�X�N�Ȃ�_sad");
	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0111]
Clear bites his lip in a frown&.

{
	CreateSE("SE01","se����_��_����01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateSE("SE02","se�l��_����_�ߎC��07");
	MusicStart("SE02",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 2000, 0, null);

	DeleteAllSt(200,true);
}
He then rummages into his pockets and quickly pulls 
something out&.

The thing he pulls out is an umbrella&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se����_�P_�J��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(500);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0112]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/0000440a01">
"Whoa!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",760, @0,@0,"fu�N���A_�ʏ�}�X�N�Ȃ��P_worry2");
	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0120]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/0000450a04">
"You'll catch a cold in the rain&, Master&."

{
	FwPro("fw���t_�ʏ�_normal2",1500,"fw���t_�ʏ�_confuse");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/0000460a01">
"&.&.&.Haha!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	DeleteFw();
//	DeleteAllSt(200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0121]
It's so like Clear to do something so out of the blue like this&, and I let out a small laugh&.

Even now&, he's still concerned for me as ever&.

He holds out his umbrella closer to me&.

This is the same old Clear I know so well&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����t�@�C��["dm4401lv.nss"]

}
