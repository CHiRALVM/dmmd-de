//<continuation number="110">
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


scene dm5650.nss_MAIN
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
	#�C�x���g�t�@�C����=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm5660h.nss";

}


scene dm5650.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	OnBG(10,"bg210011_2_�\�I�C�ƍ��l");
	FadeBG(0,true);

	CreateTextureSP("�G�d�u120", 120, Center, Middle, "cg/ev/ev564���t�A����F�߂�a.jpg");

	FadeDelete("��w�i", 0, null, true);

	CreateSE("SE02","se��_���R_�g01L");
	MusicStart("SE02",2000,700,0,1000,null,true);

	FadeDelete("�G�d�u120", 500, null, true);

	Fw("fw���t_�ʏ�_shock4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm56/5000010a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
My chest feels warm&.

While silently looking at my hands&, my heart sounded like 
it was just torn apart&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�@_�ʏ�}���g�Ȃ�_normal");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm56/5000020a06">
"He went back inside of you&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
Ren stands next to me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�@_�ʏ�}���g�Ȃ�_normal2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm56/5000030a06">
"He went back because you accepted him&."

{
	Fw("fw���t_�ʏ�_worry4");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm56/5000040a01">
"&.&.&.You're all right&, aren't you?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�@_�ʏ�}���g�Ȃ�_normal");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm56/5000050a06">
"Yeah&. You recognized that I was a seperate being&. So I
 won't go back&."

{
	Fw("fw���t_�ʏ�_shock4");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm56/5000060a01">
"I see&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SE02", 3000, 0, null);
	SoundPlay("@dm015",0,450,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
Those words relax me a little&.

I accepted another "one of me" and he returned to my 
consciousness&. That was what he wanted&.

But&, Sei&.&.&.

Sei wanted me to free him&.

So&.&.&.
I fufilled that wish&.&.&.

We won't see each other anymore&.

Even though we finally did&.&.&.

Suddenly&, the tears rose to my eyes&.

{
	St("C",740, @0,@0,"st�@_�ʏ�}���g�Ȃ�_normal2");
	FadeSt("C",200,true);
}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm56/5000061a06">
"Aoba&.&.&."

{
	Fw("fw���t_�ʏ�_sad");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm56/5000062a01">
"&.&.&.I wonder if I could've saved him somehow&.&.&. If I
 could've saved Sei&."

{
	St("C",740, @0,@0,"st�@_�ʏ�}���g�Ȃ�_normal");
	FadeSt("C",200,true);
}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm56/5000063a06">
"&.&.&.He said so&. That he didn't hate Toue&, but
 wouldn't become his piece&."

//�y�@�z
<voice name="�@" class="�@" src="voice/dm56/5000064a06">
"It's likely that he thought he was saved by you in the
 end&."

{
	Fw("fw���t_�ʏ�_worry");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm56/5000065a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
&.&.&.If only I could've saved Sei sooner&.

If only Sei and I didn't have our powers&.

Thinking of it&, I imagine the different futures we 
could've had&.

&.&.&.But&.

What's happened and what's happening now is reality&.

So&.&.&.

There must be no other road than this one&.

I roughly wiped the tears off my face&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

	CreateSE("SE02","se��_���R_�g01L");
	MusicStart("SE02",2000,700,0,1000,null,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0023]
With no words left&, I listened to the sound of the waves&.

It was like a dream with the scenery dyed in the color of 
twilight&.

I calmly closed the distance between Ren and I&.

I smelled the tide with a piercing pain in my chest&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateTextureEX("�G�w�i200", 200, -512, -414, "cg/bg/l/bg210011_2_�\�I�C�ƍ��l_l.jpg");
	Move("�G�w�i200", 1000, -512, -485, Dxl1, false);
	Fade("�G�w�i200", 1000, 1000, null, true);

	Fw("fw���t_�ʏ�_shock4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0024]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm56/5000070a01">
"&.&.&.It's beautiful&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�@_�ʏ�}���g�Ȃ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm56/5000080a06">
"Yeah&."

{
	SetVolumeEX("SE02", 3000, 0, null);

	Fw("fw���t_�ʏ�_happy");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm56/5000090a01">
"It's my precious memory&. I'm glad that I could see this
 scenery with you&."

{
	Fw("fw���t_�ʏ�_shock4");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm56/5000100a01">
"But you've always been with me&. We've seen the same places and things&.&.&.You must've seen this sea too&, huh? With me&."

{
	Fw("fw�@_�ʏ�}���g�Ȃ�_normal");
}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm56/5000110a06">
"Yeah&, I did&."


{
	DeleteFw();

	FadeDelete("�G�w�i200", 500, null, true);

	St("C",740, @0,@0,"bu�@_�ʏ�}���g�Ȃ�_normal");
	FadeSt("C",200,true);
}

While I stared at the sea&, Ren's hand touched my cheek&.

{
	DeleteAllSt(200,true);

	CreateSE("SE01","se�l��_����_����01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 200, 0, 3, 0, 0, 500, null, true);
	Delete("�G��");
}
He stared at me for a moment&.&.&. and then suddenly hugged 
me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����t�@�C��["dm5660h.nss"]

}
