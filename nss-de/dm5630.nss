//<continuation number="320">
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


scene dm5630.nss_MAIN
{
$TEXTBOX_TYPE="�\�I��";
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
	$GameName = "dm5640.nss";

}


scene dm5630.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm015",0,450,true);

	PrintBG("��w�i", 30000);

	OnBG(10,"bg211011_0_���_���E�Z�C");
	FadeBG(0,true);

	St("C",740, @0,@0,"st�Z�C_�o��_normal");
	FadeSt("C",0,true);

	FadeDelete("��w�i", 0, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
{
	St("C",740, @0,@0,"st�Z�C_�o��_normal2");
	FadeSt("C",200,true);
}
//�y�Z�C�z
<voice name="�Z�C" class="�Z�C" src="voice/dm56/3000010b14">
"&.&.&.Ren&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
Sei's gentle gaze moves to the side of me&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�Z�C_�o��_smile");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text00112]
//�y�Z�C�z
<voice name="�Z�C" class="�Z�C" src="voice/dm56/3000020b14">
"You've always been protecting Aoba&, haven't you?"

{
	Fw("fw�@_�ʏ�}���g�Ȃ�_normal");
}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm56/3000030a06">
"Yeah&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
//�y�Z�C�z
<voice name="�Z�C" class="�Z�C" src="voice/dm56/3000040b14">
"You even let yourself become something completely separate from him&, too&."

{
	Fw("fw�@_�ʏ�}���g�Ȃ�_normal");
}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm56/3000050a06">
"&.&.&.I did&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�Z�C_�o��_cry");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y�Z�C�z
<voice name="�Z�C" class="�Z�C" src="voice/dm56/3000060b14">
"Then soon enough&, 'he' will have to come out as well&."

{
	Fw("fw�@_�ʏ�}���g�Ȃ�_normal2");
}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm56/3000070a06">
"&.&.&.&.&."

{
	St("C",740, @0,@0,"st�Z�C_�o��_normal2");
	FadeSt("C",200,true);
}
//�y�Z�C�z
<voice name="�Z�C" class="�Z�C" src="voice/dm56/3000080b14">
"You and 'him' are of the same thing&. He's always been
 mourning&. Let him out&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
Him?
Who are they talking about?


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�Z�C_�o��_normal");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
//�y�Z�C�z
<voice name="�Z�C" class="�Z�C" src="voice/dm56/3000090b14">
"Aoba&. You and Ren used to be a single entity&, right?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm56/3000100a01">
"Yeah&."

{
	St("C",740, @0,@0,"st�Z�C_�o��_normal2");
	FadeSt("C",200,true);
}
//�y�Z�C�z
<voice name="�Z�C" class="�Z�C" src="voice/dm56/3000110b14">
"Ren was born for protecting the balance in your mind&.&.&.
 What was he protecting it from?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
Sei looks at me as he asks&.
Unable to think of an answer&, I looked to Ren&.

Ren stares at Sei&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
//�y�Z�C�z
<voice name="�Z�C" class="�Z�C" src="voice/dm56/3000120b14">
"There's not only you and Ren inside yourself&. You should
 know that&."

{
	St("C",740, @0,@0,"st�Z�C_�o��_normal");
	FadeSt("C",200,true);
}
//�y�Z�C�z
<voice name="�Z�C" class="�Z�C" src="voice/dm56/3000130b14">
"You should've seen him&, heard his voice&. The one
 other you&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm56/3000140a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
The one other me&.

That's&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�[��_��z_�t���b�V���o�b�N02");
	MusicStart("SE01",0,700,0,1000,null,false);


	CreatePlainSP("�G�ʂP", 10000);

	CreateTextureSP("��z1000", 1000, Center, Middle, "cg/ev/ev900�����P�l�̑��t.jpg");

//	CreateColorSP("��z�F", 5000, "624a2b");
//	Request("��z�F", OverlayRender);

	CreateTextureSPmul("��z�g", 1500, Center, Middle, "cg/ef/effi��z01.jpg");

	FadeDelete("�G�ʂP", 500, null, true);

	Wait(500);

	CreatePlainSP("�G�ʂQ", 10000);

	Delete("��z*");

	FadeDelete("�G�ʂQ", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
The one with the power of Scrap&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�Z�C_�o��_normal");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0043]
//�y�Z�C�z
<voice name="�Z�C" class="�Z�C" src="voice/dm56/3000150b14">
"Ren protected you from him so you wouldn't be taken over&."

{
	St("C",740, @0,@0,"st�Z�C_�o��_cry");
	FadeSt("C",200,true);
}
//�y�Z�C�z
<voice name="�Z�C" class="�Z�C" src="voice/dm56/3000160b14">
"But he's no enemy&. He's not a bad man&. So there's no way
 he'd ever do that to you&."

//�y�Z�C�z
<voice name="�Z�C" class="�Z�C" src="voice/dm56/3000170b14">
"Isn't that right&, the other Aoba?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Move("@C*", 500, @-50, @0, Dxl1, false);
	DeleteAllSt(500,true);

	St("MR",720, @0,@0,"st���t_�o��_normal");
	FadeSt("MR",500,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
Sei looked over his shoulder&, and at some point the other 
me had formed behind me&.

But "my" skin&, eye&, and hair were all pure white like 
Sei's&.

Sei did say that that was how we were when we were born&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("ML",720, @30,@0,"bu�Z�C_�o��_normal2");
	Move("@ML*", 500, @-30, @0, Dxl1, false);
	FadeSt("ML",500,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
//�y�Z�C�z
<voice name="�Z�C" class="�Z�C" src="voice/dm56/3000180b14">
"Aoba&. Ren agreed to your wishes&. So I'd like you to listen to his&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("ML",720, @0,@0,"bu�Z�C_�o��_normal");
	FadeSt("ML",200,true);

	CreateSE("SE01","se�l��_����_�͂�01");
	MusicStart("SE01",0,500,0,800,null,false);

	Move("@ML*", 500, @-30, @0, Dxl1, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0052]
As he said that&, Sei made his way towards the other me&. 
"I" just stared at myself silently&.

{
	Move("@ML*", 300, @-50, @0, Dxl1, false);
	DeleteSt("ML", 300,true);
}
Sei goes down one step&.

&.&.&.And then I noticed something unusual&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G�ʂP", 10000);

	CreateColorSP("�G�F��", 1000, "FFFFFF");

	CreateTextureSP("�A�b�v�w�i1100", 1100, -553, -572, "cg/bg/l/bg211011_0_���_���E�Z�C_l.jpg");

	CreateTextureSP("�A�b�v�l��1110", 1110, Center, Middle, "cg/st/x/st�Z�C_�o��_normal_x.png");

	FadeDelete("�G�ʂP", 500, null, true);

	CreateSE("SE01","se�[��_����_�͔����t����");
	MusicStart("SE01",0,600,0,1500,null,false);

	Move("�A�b�v*", 1500, @0, @-400, Dxl1, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0053]
Sei's legs are turning transparent&.
It's like he's going to eventually fade away&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm56/3000190a01">
"Brother&, your body&.&.&."

//Aoba uses Onii-san, Big brother or Sei?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	CreatePlainSP("�G�ʂQ", 10000);

	Delete("�A�b�v*");
	Delete("�G�F��");
	DeleteAllSt(0,true);

	St("C",720, @0,@0,"bu�Z�C_�o��_normal2");
	FadeSt("C",0,true);

	FadeDelete("�G�ʂQ", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
//�y�Z�C�z
<voice name="�Z�C" class="�Z�C" src="voice/dm56/3000200b14">
"My wish has already been fufilled&. You'll kill and release me&. I'll be fine&."

{
	St("C",720, @0,@0,"bu�Z�C_�o��_smile");
	FadeSt("C",0,true);
}
//�y�Z�C�z
<voice name="�Z�C" class="�Z�C" src="voice/dm56/3000210b14">
"My only regret is 'him'&. But if Ren was accepted&, it'll
 surely be fine&."

{
	St("C",720, @0,@0,"bu�Z�C_�o��_cry");
	FadeSt("C",0,true);
}
//�y�Z�C�z
<voice name="�Z�C" class="�Z�C" src="voice/dm56/3000220b14">
"Aoba&. You might find this surprising&, but I don't resent
 Toue&."

//�y�Z�C�z
<voice name="�Z�C" class="�Z�C" src="voice/dm56/3000230b14">
"No one knows what's right and what's wrong&. It's the
 people themselves who decide that&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�Z�C_�o��_normal2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y�Z�C�z
<voice name="�Z�C" class="�Z�C" src="voice/dm56/3000240b14">
"It's true that every single day was painful&, but the only
 one who could judge whether he was wrong or not was I&."

{
	St("C",740, @0,@0,"bu�Z�C_�o��_smile");
	FadeSt("C",200,true);
}
//�y�Z�C�z
<voice name="�Z�C" class="�Z�C" src="voice/dm56/3000250b14">
"But all the same&, there isn't just one point of view&. If
you listen carefully to others&, you'll come to understand&."

{
	St("C",740, @0,@0,"bu�Z�C_�o��_smile2");
	FadeSt("C",200,true);
}
//�y�Z�C�z
<voice name="�Z�C" class="�Z�C" src="voice/dm56/3000260b14">
"Because your heartful answers are everything to me&."

//I dont know how those relate, but ok

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����o�F�Z�C��st�𔖂����Ă���
	CreateTextureEX("�ڂ���3000", 3000, Center, Middle, "cg/bg/bg211011_0_���_���E�Z�C.jpg");
	Fade("�ڂ���3000", 2000, 400, null, false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071]
Sei's body gradually fades&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shout2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0072]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm56/3000270a01">
"Brother&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0073]
Only the silhouette of his hand touches my cheek&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�Z�C_�o��_normal2");
	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
//�y�Z�C�z
<voice name="�Z�C" class="�Z�C" src="voice/dm56/3000280b14">
"I don't resent Toue&, but I am going to end this once and
 for all&. My duty isn't done just yet&."

{
	St("C",740, @0,@0,"bu�Z�C_�o��_normal");
	FadeSt("C",200,true);
}
//�y�Z�C�z
<voice name="�Z�C" class="�Z�C" src="voice/dm56/3000290b14">
"I'm going to take all of my consciousnesses and focus them
 - this tower&.&.&. and Platinum Jail&, I'm going to destroy
 them&.

{
	St("C",740, @0,@0,"bu�Z�C_�o��_happy");
	FadeSt("C",400,true);
}
//�y�Z�C�z
<voice name="�Z�C" class="�Z�C" src="voice/dm56/3000300b14">
"This will be my last struggle as a person who was
 powerless in life&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0081]
Sei gives me another gentle smile&.

{
	St("C",740, @0,@0,"bu�Z�C_�o��_smile");
	FadeSt("C",300,true);
}
//�y�Z�C�z
<voice name="�Z�C" class="�Z�C" src="voice/dm56/3000301b14">
"Now&, Aoba&. Destroy me&.&.&. Release me&. And then I'll destroy the tower&.

{
	Fw("fw���t_�ʏ�_sad");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm56/3000302a01">
"&.&.&.&.&.No&.&.&.!"

{
	St("C",740, @0,@0,"bu�Z�C_�o��_cry");
	FadeSt("C",200,true);
}
//�y�Z�C�z
<voice name="�Z�C" class="�Z�C" src="voice/dm56/3000303b14">
"Aoba&.&.&."

Sei slightly frowns and grasps my hands with his 
transparent ones&.

//�y�Z�C�z
<voice name="�Z�C" class="�Z�C" src="voice/dm56/3000304b14">
"Look into my eyes&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_pain2");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0082]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm56/3000305a01">
"No&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0083]
//�y�Z�C�z
<voice name="�Z�C" class="�Z�C" src="voice/dm56/3000306b14">
"Aoba&."

Sei continues with a hint of sadness in his words&.

//�y�Z�C�z
<voice name="�Z�C" class="�Z�C" src="voice/dm56/3000307b14">
"Please&.&.&. Give me peace&. Release me from here&.&.&. with your power&."

{
	Fw("fw���t_�ʏ�_pain");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm56/3000308a01">
"&.&.&.!"

{
	St("C",740, @0,@0,"bu�Z�C_�o��_smile");
	FadeSt("C",800,true);
}
Trying to bear it&, I slowly looked up to Sei's face&.

His eyes were filled with an intense&, tender light&.

I look into those eyes&.&.&. and open my trembling mouth&.

This is so&.&.&.

I can save my big brother&.

&.&.&.I have to do it&.

{
	Fw("fw���t_�ʏ�_sad");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm56/3000309a01">
"&.&.&.I&.&.&. I&.&.&."

{
	FwPro("fw���t_�ʏ�_sad",5000,"fw���t_�ʏ�_worry3");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm56/3000309Aa01">
"&.&.&.I'll&.&.&. destroy you&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���҂����Ɣ�����������
	CreateSE("SE01","se�[��_����_�͑��t01");
	MusicStart("SE01",0,700,0,1000,null,false);

	DeleteFw();

	CreateColorEX("�G����", 5000, "FFFFFF");
	Fade("�G����", 0, 850, null, true);
	DrawTransition("�G����", 500, 0, 1000, 100, Dxl1, "cg/data/circle_02_01_0.png", true);

	CreateColorEXadd("�G�����Q", 5001, "FFFFFF");
	Fade("�G�����Q", 0, 1000, null, true);
	DrawTransition("�G�����Q", 2000, 0, 1000, 1000, Dxl1, "cg/data/circle_02_01_0.png", true);
	Delete("�G����");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0085]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm56/3000309Ba01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("SE*", 1500, 0, null);

	CreateColorSP("�G����", 6000, "BLACK");
	DrawTransition("�G����", 500, 0, 1000, 100, null, "cg/data/slide_05_00_0.png", true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0086]
A bright light flashes&, almost too much to keep my eyes 
open&. 

And when it faded out&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	St("C",740, @0,@0,"st�Z�C_�o��_smile");
	FadeSt("C",0,true);

	Fade("�ڂ���3000", 0, 800, null, false);
	Delete("�G����*");

	DrawDelete("�G����", 1500, 100, null, "slide_05_00_0", true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0087]
Sei was farther away from me&, smiling&, with his body 
nearly all gone&.

{
	Fw("fw���t_�ʏ�_worry4");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm56/3000309Ca01">
"&.&.&.Brother&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�Z�C_�o��_happy");
	FadeSt("C",500,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0088]
//�y�Z�C�z
<voice name="�Z�C" class="�Z�C" src="voice/dm56/3000310b14">
"I'm glad I got to talk to you in the end&.&.&. Aoba&, thank
 you&, I really mean it&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�[��_����_�͔����t����");
	MusicStart("SE01",0,700,0,1500,null,false);

	SetVolumeEX("@dm*", 3000, 0, null);
	DeleteAllSt(2000,true);

	Wait(1000);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0089]
And with his last words&.&.&.

Sei dissolved into the air&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm56/3000320a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0091]
I stood around like an idiot&, blankly staring at where Sei should've been&.

He was gone&.

I knew very well&.&.&.
what that meant&.

Almost too well&.

There were no tears&.

Just&.&.&.

{
	Fw("fw���t_�ʏ�_pain2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm56/3000321a01">
"&.&.&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0092]
My emotions went out of control and my throat began to 
burn&.

I couldn't help it&. 

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����t�@�C��["dm5640.nss"]

}
