//<continuation number="220">
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


scene dm5710.nss_MAIN
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
	$GameName = "dm5720.nss";

}


scene dm5710.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	OnBG(10,"bg102011_5_���}�X��");
	FadeBG(0,true);

	CreateTextureEX("�G�w�i100", 100, -458, -364, "cg/bg/l/bg102011_5_���}�X��_l.jpg");

	SoundPlay("@dm012",0,450,true);

	FadeDelete("��w�i", 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
I'm working at Heibon like I used to&.

We have as little customers as we did before&, so I'm 
not too busy&.

&.&.&.But&.

Only now do I realize how precious normal days are&.

So much has happened&, so much lost&.&.&. <k>
So this is more than enough for me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//���V�K�ǉ��V�[��(02/04�j

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
I remembered a lot of things this past year&.

It was an important year for me&.

I felt some of my fragmented memories come back to me and 
pile up little by little&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G�ʂP", 10000);

	CreateTextureSP("��z1000", 1000, Center, Middle, "cg/bg/bg104051_5_���t���.jpg");

	CreateColorSP("��z�F", 5000, "#624a2b");
	Request("��z�F", OverlayRender);

	CreateTextureSPmul("��z�g", 1500, Center, Middle, "cg/ef/effi��z01.jpg");

	FadeDelete("�G�ʂP", 1000, null, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
And while that was happening&, I spoke with Granny&.

She answered my questions clearly and carefully&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureEX("��z1001", 1001, 0, -589, "cg/bg/bg209011_2_�\�I���t����O�ό��グ.jpg");
	Fade("��z1001", 1000, 1000, null, true);
	Delete("��z1000");

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
The beach I saw in my dreams was by the church I was left 
at in Midorijima&.

One day&, I had slipped out of the church and went to the 
shore&.

And then&.&.&. I met him there&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureEX("��z1002", 1002, Center, Middle, "cg/bg/bg210011_2_�\�I�C�ƍ��l.jpg");
	Fade("��z1002", 1000, 1000, null, true);
	Delete("��z1001");

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
My father&.

I strongly wanted to leave along with him&.

I wanted him to take me&.

We weren't connected by blood&. 
The same went for my mother&.

I was born in Toue's research lab&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//	Wait(500);

	CreateTextureEX("��z1003", 1003, Center, Middle, "cg/bg/bg104001_1_���t��O�ʂ�.jpg");
	Fade("��z1003", 1000, 1000, null, true);
	Delete("��z1002");

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0015]
My mother wasn't Granny's real daughter&, but she was 
raised by her&.

My father was a man who just stumbled upon this island and fell in love with my mother&.

He was a man who traveled a lot&, and he had no intention 
of being binded to that island with my mother&.

She knew that&, but a day came where he had forced her away from the island&.

He was a man with no family&, so Granny was suspicious 
of him from the start&.

But she had intuition&, and could tell by the serious look 
on my mother's face&, a woman with her heart closed&.

That this man had some sort of miraculous power&.

So Granny resolved herself and accepted him&.

Granny sent her daughter off with him&.

And after some time&, the two of them came back to her&.

&.&.&.But this time with a child&, me&.

Granny was horrified&, hearing that I was at a church 
by the sea&.

And she knew with one look to my face&.

They looked into the church&.&.&. and the one who had taken 
me to that church was Granny&.

She said that she believed it was fate&.

That is was fate for me to come to her after she had given me to the church&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureEX("��z1004", 1004, Center, Middle, "cg/bg/bg104051_5_���t���.jpg");
	Fade("��z1004", 1000, 1000, null, true);
	Delete("��z1003");

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0016]
&.&.&.Granny said to me that "the time to talk has finally 
come" when we spoke together&.

She always was silently watching over me&.

I was grateful from the depths of my heart after I heard 
her story&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���V�K�ǉ��V�[�������܂�(02/04�j

	CreatePlainSP("�G�ʂQ", 10000);
	Delete("��z*");

	SetVolumeEX("@dm*", 1500, 0, null);
	FadeDelete("�G�ʂQ", 1500, null, true);

	CreateSE("SE01","se����_�d�b_�镽�}01L");
	MusicStart("SE01",0,700,0,1000,null,true);

	Wait(1000);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0017]
I thought about all of that with my elbow on the counter&, 
when the phone started to ring&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se����_�d�b_��镽�}01");
	MusicStart("SE01",0,700,0,1000,null,false);

	SoundPlay("@dm002",0,450,true);

	CreateTextureEX("�G�d�u100", 100, -683, -387, "cg/ev/l/ev002���t�o��_l.jpg");
	Fade("�G�d�u100", 500, 1000, null, true);
	Move("�G�d�u100", 1000, -790, -205, DxlAuto, true);
	Fade("�G�w�i100", 0, 1000, null, true);

	//Fw("fw���t_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm57/1000010a01">
"Hello&, you've reached Heibon&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//���E�C���X�̊�A�C�R���͕\�����Ȃ�

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
//�����H�F�d�b
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm57/1000020b04">
"Hello? I have something to ask&, would this happen to be
 Aoba-san?"

{
	//Fw("fw���t_�ʏ�_normal2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm57/1000030a01">
"? Yes&, it's me&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
It's a voice I've heard before&.

Who&, again&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0023]
//�����H�F�d�b
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm57/1000040b04">
"Is that so&. This is Midorijima General Hospital&. I'm
 actually here to inform you of a relative that has been
 admitted&."

{
	//Fw("fw���t_�ʏ�_shock2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm57/1000050a01">
"Eh? Relative? Do you mean my grandmother?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�����H�F�d�b
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm57/1000060b04">
"No&, it's your older brother&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	FadeDelete("�G�d�u100", 500, null, true);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031a]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm57/1000070a01">
"&.&.&.Brother?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031b]
//�����H�F�d�b
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm57/1000080b04">
"Yes&. He didn't have any ID on him&, so our call is a bit
 late&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
//�����H�F�d�b
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm57/1000090b04">
"He told us about you&."

{
	Fw("fw���t_�ʏ�_worry4");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm57/1000100a01">
"No&.&.&. Are you sure you have the right person? Maybe it's
 someone else?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�����H�F�d�b
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm57/1000110b04">
"No&, it doesn't seem to be&. Your name is Seragaki Aoba&,
 is it not?"

{
	Fw("fw���t_�ʏ�_worry3");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm57/1000120a01">
"&.&.&.Ah&, yes&. It is&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
//�����H�F�d�b
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm57/1000130b04">
"And your older brother's name is Sei&, correct?"

{
	Fw("fw���t_�ʏ�_shock2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm57/1000140a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
I lose my words&.

No one knows that Sei was my older brother&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
Just the sound of his name brings back the built up 
emotions from a year ago&.

And my mouth began to move on its own&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm57/1000150a01">
"&.&.&.Yes&. My brother's name is Sei&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0052]
//�����H�F�d�b
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm57/1000160b04">
"I don't believe we're wrong here&."

{
	Fw("fw���t_�ʏ�_worry3");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm57/1000170a01">
"I see&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0053]
//�����H�F�d�b
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm57/1000180b04">
"How about you make a visit when it's a convenient time for you?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm57/1000190a01">
"Ah&, yes&. Right&.&.&. I'll look into it&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
//�����H�F�d�b
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm57/1000200b04">
"That's great&. We'll be waiting&. Please come and visit&.
 Well&, then&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se����_�R�C��_���쉹01");
	MusicStart("SE01",0,700,0,800,null,false);

	Fade("�G�w�i100", 250, 0, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0062]
I put down the receiver&, half-dead&.
I reseat myself on the stool&.

Was that&.&.&.

Real?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);
	Fw("fw���t_�ʏ�_sad");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0063]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm57/1000210a01">
"That phone call just now&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SoundPlay("@dm015",0,450,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0064]
Sei was found?

It's been so long that the realization only sunk into me 
just then&.

But I can't believe something like that so easily&.

What do you mean they found them?
They found what? The body?

They may have miraculously found him in the tower&, but his heart is&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G�ʂP", 10000);

	CreateTextureSP("��z700", 700, Center, Middle, "cg/bg/bg211011_0_���_���E�Z�C.jpg");
	St("C",740, @0,@0,"bu�Z�C_�o��_happy");
	FadeSt("C",0,true);
	CreateTextureEX("��z�ڂ���1000", 1000, Center, Middle, "cg/bg/bg211011_0_���_���E�Z�C.jpg");
	Fade("��z�ڂ���1000", 0, 800, null, true);


	CreateColorSP("��z�F", 1600, "624a2b");
	Request("��z�F", OverlayRender);

	CreateTextureSPmul("��z�g", 1500, Center, Middle, "cg/ef/effi��z01.jpg");

	FadeDelete("�G�ʂP", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0065]
Sei&.&.&. disappeared in front of my eyes&.

Saying that "he wanted to end things once and for all"&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G�ʂQ", 10000);

	Delete("��z*");
	DeleteAllSt(0,true);

	FadeDelete("�G�ʂQ", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0066]
I lost my brother&.

And&.&.&. Ren too&.

The Allmate of Ren is still like it was at activation&.

I thought of inserting a training program into him&, but 
there was no point&.

The Ren I know isn't coming back&.

The other me&, Sei&, Ren&, they all left me&.&.&.

It's back to same old same old&, but my heart still feels 
like it's full of holes&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
&.&.&.As I thought&, it's impossible to believe that Sei was 
found&.

But they did know that he was my older brother&.

Why? Did someone tell them?

Or&.&.&. <k>
Is Sei really&.&.&.

&.&.&.That call may have been a prank&, or maybe a plain 
misunderstanding&.

But&, still&.&.&. I should go and see him&.

Those words plagued me with worry&.

&.&.&.Yeah&.

I remember his words and bring myself together&.

Yeah&. I don't need doubt&.
It doesn't matter even if it's just a prank&.

So&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureEX("�G�w�i100", 100, -458, -304, "cg/bg/l/bg102011_5_���}�X��_l.jpg");
	Move("�G�w�i100", 1000, @0, @-60, Dxl1, false);
	Fade("�G�w�i100", 1000, 1000, null, true);

	Wait(500);

	Fw("fw���t_�ʏ�_serious");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0079]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm57/1000220a01">
"Because I can always destroy the world at any time&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	ClearFadeAll(1000, true);

	Wait(1000);

	OnBG(10,"bg104001_1_���t��O�ʂ�");
	FadeBG(1000,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
I got Haga-san's permission ahead of time&, called 
Granny at home&.&.&. and told her about Sei&.

{
	OnBG(10,"bg104021_5_���t��䏊");
	FadeBG(500,true);
}
She listened to me as she made dinner in the kitchen&, 
and then turned around and just said "Is that so?"&.

I couldn't tell what she was thinking as I stared at 
her back&.

I think she feels guilty over letting Sei become a victim 
of Toue&.

But I don't think Sei ever hated her for it&.

That's how I felt&.

So I decided to go to the hospital to check if Sei was 
really there or not&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

	ClearFadeAll(3000, true);

//�����o�F�a�@�ֈړ�
//�����t�@�C��["dm5720.nss"]

}
