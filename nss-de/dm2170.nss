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


scene dm2170.nss_MAIN
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
	#ev217���t�A�m�C�Y���蓖�Ă���=true;

	#bg302051_5_�O���b�^�[�G���g�����X�Ǒ�=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm2180.nss";

}


scene dm2170.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	CreateColorSP("�G�F��", 5000, "000000");

	OnBG(10,"bg302051_5_�O���b�^�[�G���g�����X");
	FadeBG(0,true);

	Delete("��w�i");

	CreateSE("SE01","se����_�h�A��_���J��01b");
	MusicStart("SE01",0,700,0,1000,null,false);

	SoundPlay("@dm004",0,450,true);

	DrawDelete("�G�F��", 1000, 100, null, "blind_01_00_1", true);

	Fw("fw���t_�ʏ�_sigh3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/7000010a01">
"Haah&.&.&."

{
	St("C",740, @0,@0,"bu�m�C�Y_�ʏ�_serious");
	FadeSt("C",200,true);
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/7000020a03">
"&.&.&.&.&."

I enter the building&, relieved&, but Noiz scowls silently&.

{
	Fw("fw���t_�ʏ�_cranky");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/7000030a01">
"What now?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�m�C�Y_�ʏ�_angry");
	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/7000040a03">
"That was totally unnecessary&."

{
	Fw("fw���t_�ʏ�_shock2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/7000050a01">
"Huh?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�m�C�Y_�ʏ�_angry");
	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/7000060a03">
"I could've won easily if you didn't go and do that&."

{
	Fw("fw���t_�ʏ�_worry4");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/7000070a01">
"&.&.&.Hey&, you&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
Now's not the time to start acting like a little brat&.
Accompanied by my surprise&, I feel another surge of anger 
welling up&.

{
	Fw("fw���t_�ʏ�_rage");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/7000080a01">
"Excuse me&, but getting involved in stupid shit like that
 is just gonna bite you in the ass in the future&. Don't you at least know that much?"

{
	Fw("fw���t_�ʏ�_hard");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/7000090a01">
"Those guys are something completely different&. Once you're their target&, they'll stick to you like slimy natto&.
 That's just trouble for us&."

{
	Fw("fw���t_�ʏ�_worry4");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/7000100a01">
"Even if you didn't know that&, what'll you do if this
 escalates? It'll just be harder for us to move around&."

{
	St("C",740, @0,@0,"bu�m�C�Y_�ʏ�_angry2");
	FadeSt("C",200,true);
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/7000110a03">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
Noiz faces sideways&, looking grumpy&.

Does his silence mean he understood what I meant for once? 

{
	SetVolumeEX("@dm*", 2000, 0, null);
}

I think I can see Noiz a little differently now&, but then 
I notice something&.&.&.

His hand is dyed red&.

{
	Fw("fw���t_�ʏ�_shock2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/7000120a01">
"Are you injured again? You're bleeding!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se�l��_����_����01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 150, 5, 0, 0, 0, 500, null, true);
	Delete("�G��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
The hand that I reach out is once again brushed away&.

{
	St("C",740, @0,@0,"bu�m�C�Y_�ʏ�_serious");
	FadeSt("C",200,true);
	SoundPlay("@dm005",0,450,true);
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/7000130a03">
"Don't touch me&."

Noiz gazes at me coldly&.

This guy&.&.&.

He was like this when he burned himself with the coffee 
too&, but why does he hate it so much?

He's usually indifferent&, but he reacts excessively to 
touching&. Is he obsessed with cleanliness?

{
	Fw("fw���t_�ʏ�_worry3");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/7000140a01">
"&.&.&.Hey&, please&. Let's at least stop the bleeding&."

{
	St("C",740, @0,@0,"bu�m�C�Y_�ʏ�_angry2");
	FadeSt("C",200,true);
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/7000150a03">
"It's fine&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050a]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/7000160a01">
"It'll bother me if it gets worse&. Show me&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	CreateSE("SE01","se�l��_����_�͂�01");
	MusicStartSet("SE01",500,0,1000,null,false);

	St("C",720, @0,@0,"bu�m�C�Y_�ʏ�_angry3");
	St("C",720, @0,@0,"bu�m�C�Y_�ʏ�_shock");
	FadeSt("C",180,true);
	FadeFadeStPro("C", 1300, 180, 1000, 180);

	CreateProcessEX("�v���Z�X", "LProc_dm2170_01Act");
	Request("�v���Z�X", Start);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050b]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/7000170a03">
"I said it's fi- &.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	if($LProc_dm2170_01Act==true){
	Request("�v���Z�X", Stop);
	$LProc_dm2170_01Act=true;
	}else{
	}
	SetVolumeEX("SE01", 300, 0, null);
	Delete("�v���Z�X");

{	Fw("fw���t_�ʏ�_angry");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050c]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/7000180a01">
"Show me&."

{
	St("C",740, @0,@0,"bu�m�C�Y_�ʏ�_angry");
	FadeSt("C",200,true);
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/7000190a03">
"Let go&."

{
	Fw("fw���t_�ʏ�_angry");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/7000200a01">
"No way&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

	CreateSE("SE01","se�l��_����_����01");
	MusicStart("SE01",0,500,0,1000,null,false);
	Wait(500);
	CreateSE("SE02","se�l��_����_�ߎC��02");
	MusicStart("SE02",0,500,0,1000,null,false);

	CreateTextureEX("�G�w�i90", 90, -757, -576, "cg/bg/l/bg302051_5_�O���b�^�[�G���g�����X_l.jpg");
	Move("�G�w�i90", 500, -757, -534, Dxl1, false);
	Fade("�G�w�i90", 500, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
I grab Noiz's arm with no questions asked&, ignoring his 
refusals as I draw it closer to me&.

If I don't do this a little forcibly&, he's going to leave 
the injury untreated again&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_serious");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/7000210a01">
"If you really hate it&, go ahead and hit me&."

{
	Fw("fw�m�C�Y_�ʏ�_angry");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/7000220a03">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0062]
Noiz seems quite angry&, but he looks away and actually 
behaves himself&.

His injury is worse than I thought&, and the back of his 
hand is completely torn&.

He probably got sliced by a knife or something when he was 
fighting the yakuza members&.

That reminds me&.&.&. what about the injury from yesterday?
I casually look at his fingertips too&.

A red line runs from his middle finger to his palm&, but 
other than that it doesn't look too bad&.

That's good&.&.&.

It's my fault he was injured&, so just knowing the 
situation makes me relieved&.

&.&.&.Oh&.

I don't have anything I could use to treat the injury&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_angry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/7000230a01">
"Don't run away&. Stay put&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	DeleteFw();
	CreateTextureEX("�G�w�i91", 91, Center, Middle, "cg/bg/bg302051_5_�O���b�^�[�G���g�����X�Ǒ�.jpg");
	Fade("�G�w�i91", 500, 1000, null, true);

	CreateSE("SE01","se����_�h�A��q_���J������01");
	MusicStart("SE01",0,600,0,1100,null,false);

	Wait(500);

	CreateSE("SE02","se����_��_����01");
	MusicStart("SE02",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071]
I released Noiz's hand after giving him a warning and 
randomly open drawer shelves&.

{
	SetVolumeEX("SE*", 1000, 0, null);
	CreateSE("SE01","se����_�h�A��q_���J������01");
	MusicStart("SE01",0,700,0,1200,null,false);
}
&.&.&.Ah&.

Inside one of them is something that looks like a 
first-aid kit&.

It turned out to be a small plastic pack containing 
bandages&, sterilization sheets&, and different sized 
adhesive bandaids and such&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	FadeDelete("�G�w�i91", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0072]
This is enough&.
I take the first-aid kit and return to Noiz immediately&.

{
	CreateSE("SE01","se�l��_����_�ߎC��17");
	MusicStart("SE01",0,500,0,1200,null,false);
}
When I take his arm&, Noiz makes an openly disgusted face&.

But I ignore it and look at the state of his injury&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE02","se�l��_����_�ߎC��14");
	MusicStart("SE02",0,700,0,1200,null,false);

	CreateTextureEX("�G�d�u100", 100, Center, Middle, "cg/ev/ev217���t�A�m�C�Y���蓖�Ă���.jpg");
	Fade("�G�d�u100", 1000, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/7000240a01">
"Aah&, looks painful&.&.&."

I wipe the blood that hadn't dried with a tissue&. I feel a bit of pain just from looking at it&.&.&.

//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/7000250a01">
"This might sting a little&. Try to bear with it&."

I gently wipe the wound with a sterilization sheet&.
It'll still sting even if I do it carefully&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateTextureEX("�G�d�u101", 101, -92, 0, "cg/ev/l/ev217���t�A�m�C�Y���蓖�Ă���_l.jpg");
	Move("�G�d�u101", 1000, -92, -78, Dxl1, false);
	Fade("�G�d�u101", 1000, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
Thinking&, I look at Noiz's face&.

There are no signs that he's going through pain&.
His face looks calm&.

&.&.&.Is he not in pain?

Or is he just enduring it out of pride?

If that's the case&, it kinda looks the opposite&.&.&.

Feeling dubious&, I put the largest bandaid I could find 
on the wound&.

{
	CreateSE("SE02","se�l��_����_�ߎC��16");
	MusicStart("SE02",0,700,0,1200,null,false);

	Move("�G�d�u101", 500, @0, @-80, Dxl1, false);
	FadeDelete("�G�d�u101", 500, null, true);
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/7000260a01">
"There&, finished&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��01");
	MusicStart("SE01",0,500,0,1500,null,false);

	FadeDelete("�G�d�u100", 250, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0091]
Noiz looks at me like an angry child glaring at his parent and withdraws his hand&.

I'm relieved that we were able to avoid a situation where  his injury went untreated&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);

//�����t�@�C��["dm2180.nss"]

}
