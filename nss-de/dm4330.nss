//<continuation number="250">
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


scene dm4330.nss_MAIN
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
	$GameName = "dm4330sl.nss";

}


scene dm4330.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintGO("��w�i", 30000);

	OnBG(10,"bg302021_5_�O���b�^�[����");
	FadeBG(0,true);

	FadeDelete("��w�i", 0, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
And eventually&, I can see under the mask&.&.&.

{	St("C",740, @0,@0,"bu�N���A_���ʃ}�X�N�Ȃ�_sad");
	FadeSt("C",500,true);}
This time&, I see the same troubled face I saw yesterday&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SoundPlay("@dm012",0,450,true);

	Fw("fw���t_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm43/3000010a01">
"&.&.&.&.&."

{
	St("C",740, @0,@0,"bu�N���A_���ʃ}�X�N�Ȃ�_normal2");
	FadeSt("C",200,true);
}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm43/3000020a04">
"Um&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
Clear raises his head and looks at me with worried eyes&.

{	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,700,0,1100,null,false);
	SetVolumeEX("SE*", 1000, 0, null);}
I let out a small grin and petted Clear's hair like I 
would a small animal&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm43/3000030a01">
"I already told you&, it's fine&. I won't ever hate you&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm43/3000040a04">
"Really?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm43/3000050a01">
"Yep&."

{
	St("C",740, @0,@0,"bu�N���A_���ʃ}�X�N�Ȃ�_smile");
	FadeSt("C",200,true);
}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm43/3000060a04">
"&.&.&.Thank goodness&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
Clear shows a smile full of relief&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�N���A_���ʃ}�X�N�Ȃ�_normal");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm43/3000070a04">
"Master&."

{
	Fw("fw���t_�ʏ�_shock");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm43/3000080a01">
"Hm?"

{
	St("C",740, @0,@0,"bu�N���A_���ʃ}�X�N�Ȃ�_normal2");
	FadeSt("C",200,true);
}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm43/3000090a04">
"I have something to ask you&, is that all right?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
Clear straightens himself out and looks at me with serious eyes&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm43/3000100a01">
"Sure&."

{
	St("C",740, @0,@0,"bu�N���A_���ʃ}�X�N�Ȃ�_normal2");
	FadeSt("C",200,true);
}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm43/3000110a04">
"Then&, excuse me&. I have always wondered about this&, but&.&.&. does your heart beat quickly when you fall asleep?"

{
	Fw("fw���t_�ʏ�_normal2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm43/3000120a01">
"&.&.&.When I'm sleeping? When people are asleep?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm43/3000130a04">
"Oh&, no&, just before they fall asleep&, I mean&.&.&. don't you
 think about how you might stop breathing?"

{
	St("C",740, @0,@0,"bu�N���A_���ʃ}�X�N�Ȃ�_normal");
	FadeSt("C",200,true);
}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm43/3000140a04">
"How you could never wake up again&, and die in your
 sleep&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm43/3000150a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
His sudden question surprises me a little bit&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm43/3000160a01">
"Not really&, I've never thought all that seriously about
 how much or when my heart beats&."

{
	St("C",740, @0,@0,"bu�N���A_���ʃ}�X�N�Ȃ�_normal2");
	FadeSt("C",200,true);
}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm43/3000170a04">
"Is that so? Why?"

{
	Fw("fw���t_�ʏ�_shock");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm43/3000180a01">
"Well&, why&.&.&. Hmm&. Usually people don't think about that
 sort of stuff&."

{
	St("C",740, @0,@0,"bu�N���A_���ʃ}�X�N�Ȃ�_normal");
	FadeSt("C",200,true);
}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm43/3000190a04">
"But that doesn't guarantee that it won't happen&. Still&,
 why?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_serious");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm43/3000200a01">
"&.&.&.&.&."

{
	St("C",740, @0,@0,"bu�N���A_���ʃ}�X�N�Ȃ�_normal2");
	FadeSt("C",200,true);
}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm43/3000210a04">
"There is always an end to a person's life&. Don't you think about terrifying things like that?"

//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm43/3000220a04">
"When you think about how there is already an end&, don't
 you have any questions about life itself?"

{
	Fw("fw���t_�ʏ�_normal2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm43/3000230a01">
"&.&.&.Clear?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm43/3000240a04">
"Haven't you ever thought about what it means to live?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�N���A_���ʃ}�X�N�Ȃ�_normal");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm43/3000250a04">
"Don't you ever wonder why you're alive right now&, Master?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
Clear's deep questions leave me at a complete loss&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����t�@�C��["dm4330sl.nss"]

}
