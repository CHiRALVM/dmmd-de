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


scene dm4401lv.nss_MAIN
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
	#ev440�N���A�ƃL�X=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	RainDropDelete(0);//���̃R�}���h�ŉJ�����Ă��������A�O�̂��߂Ƀt�@�C���o�鎞�ɂ��L�ڂ��Ă����ĉ�����
	RainDropDelete2(0);//���̃R�}���h�ŉJ�����Ă��������A�O�̂��߂Ƀt�@�C���o�鎞�ɂ��L�ڂ��Ă����ĉ�����
	$GameName = "dm4410.nss";

}


scene dm4401lv.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm015",0,450,true);

	RainDrop(750,0,16);
	RainDrop2(730,0,64);

	PrintBG("��w�i", 30000);

	OnBG(10,"bg301031_5_�v���`�i�W�F�C���ʂ�H�n01");
	FadeBG(0,true);
	St("C",760, @0,@0,"fu�N���A_�ʏ�}�X�N�Ȃ��P_worry2");
	FadeSt("C",0,true);

	FadeDelete("��w�i", 0, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0122]
{
	CreateStencil("�}�X�N�P",1000,-216,-290,128,"cg/fu/fu�N���A_�ʏ�}�X�N�Ȃ��P_normal.png",false);
	SetAlias("�}�X�N�P","�}�X�N�P");

	CreatePlainSP("�}�X�N�P/�G��", 5000);
	
	St("C",760, @0,@0,"fu�N���A_�ʏ�}�X�N�Ȃ��P_worry");
	FadeSt("C",0,true);

	FadeDelete("�}�X�N�P/�G��", 200, null, true);
}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/0000470a04">
"I'm so happy that you're my master&. Thank you so much&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0123]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/0000480a01">
"You're just exaggerating&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateStencil("�}�X�N�P",1000,-216,-290,128,"cg/fu/fu�N���A_�ʏ�}�X�N�Ȃ��P_normal.png",false);
	SetAlias("�}�X�N�P","�}�X�N�P");

	CreatePlainSP("�}�X�N�P/�G��", 5000);
	
	St("C",760, @0,@0,"fu�N���A_�ʏ�}�X�N�Ȃ��P_normal");
	FadeSt("C",0,true);

	FadeDelete("�}�X�N�P/�G��", 200, null, true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0124]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/0000490a04">
"They're only my true feelings&."

{
	Fw("fw���t_�ʏ�_confuse");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/0000500a01">
"&.&.&.It's kind of embarrassing how you can say that so
 bluntly&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateStencil("�}�X�N�P",1000,-216,-290,128,"cg/fu/fu�N���A_�ʏ�}�X�N�Ȃ��P_normal.png",false);
	SetAlias("�}�X�N�P","�}�X�N�P");

	CreatePlainSP("�}�X�N�P/�G��", 5000);

	St("C",760, @0,@0,"fu�N���A_�ʏ�}�X�N�Ȃ��P_shock");
	FadeSt("C",0,true);

	FadeDelete("�}�X�N�P/�G��", 200, null, true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0131]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/0000510a04">
"Oh&, that's right&."


{
	CreateSE("SE01","se����_��_����01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateSE("SE02","se�l��_����_�ߎC��07");
	MusicStart("SE02",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 2000, 0, null);

	DeleteAllSt(200,true);
}
Looking as if he just remembered something&, Clear rummages around in his pockets again&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0132]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/0000520a04">
"The mask&, the mask&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0133]
He takes his gas mask out of his pocket&.

Seriously&, how big are those pockets&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",760, @0,@0,"fu�N���A_�ʏ�}�X�N�Ȃ��P_worry2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0140]
It surprises me to see the kinds of things he can stuff 
into his pockets&, and Clear stares straight at my face&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0141]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/0000530a01">
"Hm?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateStencil("�}�X�N�P",1000,-216,-290,128,"cg/fu/fu�N���A_�ʏ�}�X�N�Ȃ��P_normal.png",false);
	SetAlias("�}�X�N�P","�}�X�N�P");

	CreatePlainSP("�}�X�N�P/�G��", 5000);

	St("C",760, @0,@0,"fu�N���A_�ʏ�}�X�N�Ȃ��P_worry");
	FadeSt("C",0,true);

	FadeDelete("�}�X�N�P/�G��", 200, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0142]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/0000540a04">
"Master&.&.&.Ah&, no&, um&."

{
	CreateStencil("�}�X�N�P",1000,-216,-290,128,"cg/fu/fu�N���A_�ʏ�}�X�N�Ȃ��P_normal.png",false);
	SetAlias("�}�X�N�P","�}�X�N�P");

	CreatePlainSP("�}�X�N�P/�G��", 5000);

	St("C",760, @0,@0,"fu�N���A_�ʏ�}�X�N�Ȃ��P_sad");
	FadeSt("C",0,true);

	FadeDelete("�}�X�N�P/�G��", 200, null, true);
}
Clear avoids meeting my eyes and stumbles over his words&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0143]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/0000550a01">
"What's up?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0144]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/0000560a04">
"&.&.&.Um&, I remembered one thing I wanted to ask of you&. Is
 that all right?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0150]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/0000570a01">
"Sure&."

{
	CreateStencil("�}�X�N�P",1000,-216,-290,128,"cg/fu/fu�N���A_�ʏ�}�X�N�Ȃ��P_normal.png",false);
	SetAlias("�}�X�N�P","�}�X�N�P");

	CreatePlainSP("�}�X�N�P/�G��", 5000);

	St("C",760, @0,@0,"fu�N���A_�ʏ�}�X�N�Ȃ��P_sad");
	FadeSt("C",0,true);

	FadeDelete("�}�X�N�P/�G��", 200, null, true);
}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/0000580a04">
"I called you by your name before&, but-"

{
	Fw("fw���t_�ʏ�_shock");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/0000590a01">
"&.&.&.Huh?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0151]
He did?
When he was talking with those two&, maybe?

It was already a strange situation&, so I didn't notice&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateStencil("�}�X�N�P",1000,-216,-290,128,"cg/fu/fu�N���A_�ʏ�}�X�N�Ȃ��P_normal.png",false);
	SetAlias("�}�X�N�P","�}�X�N�P");

	CreatePlainSP("�}�X�N�P/�G��", 5000);

	St("C",760, @0,@0,"fu�N���A_�ʏ�}�X�N�Ȃ��P_worry");
	FadeSt("C",0,true);

	FadeDelete("�}�X�N�P/�G��", 200, null, true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0152]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/0000600a04">
"Well&.&.&. Could I call you by that name once more? Not
 'Master'&, but your name&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateStencil("�}�X�N�P",1000,-216,-290,128,"cg/fu/fu�N���A_�ʏ�}�X�N�Ȃ��P_normal.png",false);
	SetAlias("�}�X�N�P","�}�X�N�P");

	CreatePlainSP("�}�X�N�P/�G��", 5000);

	St("C",760, @0,@0,"fu�N���A_�ʏ�}�X�N�Ȃ��P_serious");
	FadeSt("C",0,true);

	FadeDelete("�}�X�N�P/�G��", 200, null, true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0160]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/0000610a04">
"&.&.&.No&, please let me call you by your name&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0161]
What he says reminds me of the conversation between Ren 
and Clear back at Glitter&.

Clear said it was natural to call your master 'Master'&. 
And he couldn't understand why Ren would call me by my 
name&.

And now&, Clear says he wants to call me by my name&.

&.&.&.Isn't this something important to him?

For him to want to call me 'Aoba' rather than 'Master' 
means that&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateStencil("�}�X�N�P",1000,-216,-290,128,"cg/fu/fu�N���A_�ʏ�}�X�N�Ȃ��P_normal.png",false);
	SetAlias("�}�X�N�P","�}�X�N�P");

	CreatePlainSP("�}�X�N�P/�G��", 5000);

	St("C",760, @0,@0,"fu�N���A_�ʏ�}�X�N�Ȃ��P_worry");
	FadeSt("C",0,true);

	FadeDelete("�}�X�N�P/�G��", 200, null, true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0162]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/0000620a04">
"Should I not?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0170]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/0000630a01">
"&.&.&.Of course you can&."

{
	CreateStencil("�}�X�N�P",1000,-216,-290,128,"cg/fu/fu�N���A_�ʏ�}�X�N�Ȃ��P_normal.png",false);
	SetAlias("�}�X�N�P","�}�X�N�P");

	CreatePlainSP("�}�X�N�P/�G��", 5000);

	St("C",760, @0,@0,"fu�N���A_�ʏ�}�X�N�Ȃ��P_shock");
	FadeSt("C",0,true);

	FadeDelete("�}�X�N�P/�G��", 200, null, true);
}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/0000640a04">
"Really?"

{
	Fw("fw���t_�ʏ�_normal");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/0000650a01">
"Yeah&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//cono�u���o�F�N���A��smile�͎g���ǂ���i�遨���t���Ί�����߂Č����Ƃ����V�[��������v
	CreateStencil("�}�X�N�P",1000,-216,-290,128,"cg/fu/fu�N���A_�ʏ�}�X�N�Ȃ��P_normal.png",false);
	SetAlias("�}�X�N�P","�}�X�N�P");

	CreatePlainSP("�}�X�N�P/�G��", 5000);

	St("C",760, @0,@0,"fu�N���A_�ʏ�}�X�N�Ȃ��P_normal2");
	FadeSt("C",0,true);

	FadeDelete("�}�X�N�P/�G��", 200, null, true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0171]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/0000660a04">
"&.&.&.Thank you very much&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,600,0,800,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

	DeleteAllSt(200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0172]
Clear looks straight into my eyes again and slowly moves 
his face towards mine&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",760, @0,@0,"fu�N���A_�ʏ�}�X�N�Ȃ��P_normal");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0173]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/0000670a04">
"Aoba-san&.&.&. I love you&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0180]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/0000680a01">
"!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0181]
My eyes widen in response to his confession&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0182]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/0000690a01">
"What do you think you're&.&.&.!?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SoundPlay("@dm014",0,450,true);

	CreateStencil("�}�X�N�P",1000,-216,-290,128,"cg/fu/fu�N���A_�ʏ�}�X�N�Ȃ��P_normal.png",false);
	SetAlias("�}�X�N�P","�}�X�N�P");

	CreatePlainSP("�}�X�N�P/�G��", 5000);

	St("C",760, @0,@0,"fu�N���A_�ʏ�}�X�N�Ȃ��P_normal2");
	FadeSt("C",0,true);

	FadeDelete("�}�X�N�P/�G��", 200, null, true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0183]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/0000700a04">
"I'm sorry&. It came out naturally&. That's just how I feel&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,600,0,1000,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

	DeleteAllSt(200,true);

	CreateTextureEX("�G�d�u101", 1001, Center, Middle, "cg/ev/ev440�N���A�ƃL�X.jpg");
	CreateTextureEX("�G�d�u100", 1000, -767, -259, "cg/ev/l/ev440�N���A�ƃL�X_l.jpg");
	Move("�G�d�u100", 1000, -608, -259, Dxl1, false);
	Fade("�G�d�u100", 1000, 1000, null, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0184]
When Clear ends his sentence&, my vision turns dark&.

And then&.&.&. something soft brushes against my lips&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Fade("�G�d�u101", 1000, 1000, null, true);
	Delete("�G�d�u100");

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0190]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/0000710a01">
"&.&.&.&.&."

//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/0000720a04">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateTextureSP("�G�w�i200", 200, -1022, -477, "cg/bg/l/bg301031_5_�v���`�i�W�F�C���ʂ�H�n01_l.jpg");
	Move("�G�w�i200", 1000, @0, @50, Dxl1, false);
	FadeDelete("�G�d�u101", 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0191]
Not even a few seconds could have passed&.

But it felt like forever until Clear took his lips off of 
mine&.

After we separate&, we both take a long breath&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	St("C",760, @0,@0,"fu�N���A_�ʏ�}�X�N�Ȃ��P_worry2");
//	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0192]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/0000730a04">
"&.&.&.I just kissed you&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0193]
Clear mutters in an upbeat tone&.

His words cause me to become extremely embarrassed&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	Fw("fw���t_�ʏ�_sad");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0200]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/0000740a01">
"Don't say stuff like that&."

{
//	St("C",760, @0,@0,"fu�N���A_�ʏ�}�X�N�Ȃ��P_sad");
//	FadeSt("C",200,true);
}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/0000750a04">
"I'm sorry&."

{
//	Fw("fw���t_�ʏ�_sad");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/0000760a01">
"You don't need to apologize&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0201]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/0000770a04">
"All right&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	DeleteAllSt(200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0202]
We both speak in a low volume&, and I can't manage to look 
up&.

That kiss surprised me&, but&.&.&. Clear's confession suprised me even more&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	Fw("fw���t_�ʏ�_shock4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0210]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/0000780a01">
"&.&.&.Hey&. Can I ask you something too?"

{
//	St("C",760, @0,@0,"fu�N���A_�ʏ�}�X�N�Ȃ��P_worry2");
//	FadeSt("C",200,true);
}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/0000790a04">
"Yes?"

{
//	Fw("fw���t_�ʏ�_shock4");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/0000800a01">
"When you said you liked me&.&.&. what did you mean by that?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	St("C",760, @0,@0,"fu�N���A_�ʏ�}�X�N�Ȃ��P_sad");
//	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0211]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/0000810a04">
"I meant&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Move("�G�w�i200", 500, @0, @-50, Dxl1, false);
	Fade("�G�w�i200", 500, 0, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0212]
Clear stops talking halfway and looks down to me&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",760, @0,@0,"fu�N���A_�ʏ�}�X�N�Ȃ��P_worry2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0213]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/0000820a04">
"I meant you are someone very precious to me&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0220]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/0000830a01">
"As your master?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateStencil("�}�X�N�P",1000,-216,-290,128,"cg/fu/fu�N���A_�ʏ�}�X�N�Ȃ��P_normal.png",false);
	SetAlias("�}�X�N�P","�}�X�N�P");

	CreatePlainSP("�}�X�N�P/�G��", 5000);

	St("C",760, @0,@0,"fu�N���A_�ʏ�}�X�N�Ȃ��P_worry");
	FadeSt("C",0,true);

	FadeDelete("�}�X�N�P/�G��", 200, null, true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0221]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/0000840a04">
"That too&, but also as Aoba-san the person&. I mean it just
 as much&."

{
	CreateStencil("�}�X�N�P",1000,-216,-290,128,"cg/fu/fu�N���A_�ʏ�}�X�N�Ȃ��P_normal.png",false);
	SetAlias("�}�X�N�P","�}�X�N�P");

	CreatePlainSP("�}�X�N�P/�G��", 5000);

	St("C",760, @0,@0,"fu�N���A_�ʏ�}�X�N�Ȃ��P_normal");
	FadeSt("C",0,true);

	FadeDelete("�}�X�N�P/�G��", 200, null, true);
}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/0000850a04">
"You are a person I want to protect&. A person I don't want
 to lose&. Someone irreplaceable&. Someone I always want to
 be with&. I feel all of those things for you&."

{
	Fw("fw���t_�ʏ�_shy3");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/0000860a01">
"&.&.&.'s that so&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0222]
I become even more embarrassed&.

Clear's 'love' takes me aback&.

But both his 'I love you' and his calling me by my name 
has serious importance&. 


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0230]
I honestly don't know how I feel about Clear yet&.

But when he kissed me and told me he loved me&.&.&. I didn't 
hate any of it&.

{
	St("C",760, @0,@0,"fu�N���A_�ʏ�}�X�N�Ȃ��P_worry");
	FadeSt("C",200,true);
}
I compose myself and stroke Clear's hair as he looks at me anxiously&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_happy");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0231]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/0000870a01">
"Thanks&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	RainDrop(750,5000,8);
	RainDrop2(730,5000,24);

	CreateStencil("�}�X�N�P",1000,-216,-290,128,"cg/fu/fu�N���A_�ʏ�}�X�N�Ȃ��P_normal.png",false);
	SetAlias("�}�X�N�P","�}�X�N�P");

	CreatePlainSP("�}�X�N�P/�G��", 5000);

	St("C",760, @0,@0,"fu�N���A_�ʏ�}�X�N�Ȃ��P_smile");
	FadeSt("C",0,true);

	FadeDelete("�}�X�N�P/�G��", 200, null, true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0232]
When I say that&, Clear's eyes close a little and he grins 
happily&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0240]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/0000880a04">
"The pleasure is mine&.&.&. Just staying by your side makes me happy&, thank you so much&."

{
	Fw("fw���t_�ʏ�_worry3");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/0000890a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0241]
His honest words make my chest hurt&.

Clear never did anything extravagent&.
He only told me his true feelings&, how he loves me&.

And that&.&.&. somehow pierces my heart&.

I want to respond to him&.

But&.&.&. I'm not really sure about my feelings&, so I can't 
give him a definite answer&.

{
	DeleteAllSt(200,true);

	Fade("�G�w�i200", 500, 1000, null, true);

	CreateSE("SE01","se����_�x�b�h_�Q�Ԃ�");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 150, 0, 3, 0, 0, 500, null, true);
	Delete("�G��");
}
So instead of using words&, I answer him with a hug&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	St("C",760, @0,@0,"bu�N���A_�ʏ�}�X�N�Ȃ�_normal");
//	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0242]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/0000900a04">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	RainDropDelete(5000);
	RainDropDelete2(3000);

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0250]
Clear tenses up a bit&, but soon shyly leans on me&.

As I hug him&, our bodies close&, I can feel the temperature
rising&. His warmth is no different from a human's&.

&.&.&.It doesn't matter if he's a machine&.

I hold Clear especially tight&, and then let go&.

Little by little&, the rain grows weaker&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0251]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/0000910a04">
"&.&.&.It looks like it's okay now&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0252]
Clear closes the umbrella&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	Fw("fw���t_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0253]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/0000920a01">
"Looks like it&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);
	RainDropDelete(1000);
	RainDropDelete2(1000);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0260]
The atmosphere feels a bit awkward&, and we both stare at 
the ground&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����t�@�C��["dm4410.nss"]

}
