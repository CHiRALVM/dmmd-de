//<continuation number="750">
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


scene dm1560ed.nss_MAIN
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
	#ev156�g��GOOD�d�c=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm9999.nss";


	//���G���h���[��
	PreSetRoll(9);
	TheEND(9);

#GDED1=1;//�g���O�b�h�G���h�t���O�擾

}


scene dm1560ed.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	CreateColorSP("�G�F��", 5000, "000000");

	OnBG(10,"bg503011_1_�g������g������");
	FadeBG(0,true);

	CreateTextureSP("�G�w�i100", 100, -144, -592, "cg/bg/l/bg503011_1_�g������g������_l.jpg");
	CreateTextureSP("�G�w�i101", 101, -144, -592, "cg/bg/l/bg503011_1_�g������g������_l.jpg");
	SetShade("�G�w�i101", HEAVY);
	Zoom("�G�w�i100", 0, 2000, 2000, null, true);
	Zoom("�G�w�i101", 0, 2000, 2000, null, true);

	FadeDelete("��w�i", 2000, null, true);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/6000010a02">
"&.&.&.Aoba&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/6000020a01">
"Mm&.&.&.Nn&."

{
	CreateSE("SE01","se�l��_����_�ߎC��15");
	MusicStart("SE01",0,700,0,1200,null,true);
	SetVolumeEX("SE*", 2000, 0, null);
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/6000030a02">
"Aoba&, wake up&. It's already ten&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/6000040a01">
"Mnnnnm&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,500,0,700,null,false);

	SetVolumeEX("SE*", 2000, 0, null);

	DrawTransition("�G�F��", 2000, 1000, 400, 100, Axl1, "cg/data/slide_05_00_0.png", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
He shakes me around and I end up opening my eyes&.

But&.&.&. I'm still tired&.
I don't want to get up&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se����_�x�b�h_�Q�Ԃ�");
	MusicStart("SE01",0,700,0,800,null,false);

	DrawTransition("�G�F��", 1000, 400, 1000, 100, Axl1, "cg/data/slide_05_00_0.png", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/6000050a01">
"Five more minutes&.&.&."

//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/6000060a02">
"Nope&. I already said so&. You always say that but you never get up&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/6000070a01">
"Four more minutes&.&.&."

//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/6000080a02">
"Nope&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/6000090a01">
"One minute&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/6000100a02">
"A-o-ba&. I'll attack you if you don't wake up&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/6000110a01">
"Mnn&.&.&. Whatever&, fine&.&.&."

//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/6000120a02">
"Jeez&."

{
	CreateSE("SE01","se����_�x�b�h_�|�ꍞ��");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se�l��_����_�ߎC��05");
	MusicStart("SE02",0,700,0,1000,null,false);
}
Koujaku's laughing voice startles me and the futon rustles and shakes&.

I think to myself&, what&.&.&.?

{
	CreateSE("SE01","se�l��_����_�ߎC��02");
	MusicStart("SE01",0,500,0,1000,null,false);

	CreateSE("SE02","se�l��_����_�ߎC��17");
	MusicStart("SE02",0,700,0,1000,null,false);
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/6000130a02">
"Aoba&. Wake up!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DrawTransition("�G�F��", 500, 1000, 700, 100, Axl1, "cg/data/slide_05_00_0.png", true);

	CreateSE("SE01","se�l��_����_�ߎC��24");
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("�G�w�i101", 2000, 7, 0, 0, 0, 500, null, false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/6000140a01">
"Mn&.&.&. Heh!? Aha&, Ahahahaha- Hey- Koujaku!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 1000, 0, null);

	FadeDelete("�G�w�i101", 300, null, false);
	DrawTransition("�G�F��", 300, 700, 0, 100, Axl1, "cg/data/slide_05_00_0.png", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
He suddenly starts to tickle me and I'm now completely 
awake&.

{
	CreateSE("SE01","se�l��_����_�ߎC��22");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreatePlainSP("�G��", 990);
	Shake("�G�w�i100", 2000, 12, 0, 0, 0, 500, null, false);
	Delete("�G��");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/6000150a01">
"Ahaha- Okay- stop- I'm awake- I'm awake so stop it!"

{
	SoundPlay("@dm012",0,450,true);

	Fade("�G�w�i100", 500, 0, null, true);
}
I cry out&, and Koujaku finally stops&.

Tickling me to get me up is plain unfair&.&.&.

{
	CreateSE("SE01","se�l��_����_�ߎC��15");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 200, 0, 5, 0, 0, 500, null, true);
	Delete("�G��");
}
I get myself together and Koujaku hugs me&, wrapped in a 
futon&, from behind&.

Koujaku rests his chin on my shoulder&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureEX("�G�d�u110", 110, 0, -731, "cg/ev/l/ev156�g��GOOD�d�c_l.jpg");
	Move("�G�d�u110", 2000, -242, -531, Dxl3, false);
	Fade("�G�d�u110", 2000, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/6000160a02">
"You're really not a morning person&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/6000170a01">
"I'm just tired&. Can't help it&."

//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/6000180a02">
"I know&. Has your life gone awfully wrong ever since you
 came to my place?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/6000190a01">
"Has it?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fade("�G�d�u110", 250, 0, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
I've been staying at Koujaku's place for about three weeks now&.

Just because it's annoying to get back home&, and well&.&.&.

Granny is home&, so there's some things I can't do&.&.&.

It's almost been three months since we've had this 
relationship&.

It feels like the time passed in a blink&.

We used to be friends&, so not much has changed a lot 
between us&.

Koujaku still coaxes his way into my house for food and is restarting his hairdressing business&.

&.&.But I don't think that Granny has found out about us yet&.

//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/6000200a02">
"Ahhh&, that? Hey&, you&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/6000210a01">
"What?"

//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/6000220a02">
"It's bad that you're sleeping over here&. Are you spoiling
 me?"

{
	CreateSE("SE01","se�l��_����_�ߎC��17");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 200, 0, 3, 0, 0, 500, null, true);
	Delete("�G��");
}
Koujaku breaks into a smile and hugs me tighter&. He starts to play with my hair&.

//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/6000230a01">
"You tell me&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��14");
	MusicStart("SE01",0,500,0,1000,null,false);

	CreateTextureEX("�G�d�u112", 112, Center, Middle, "cg/ev/ev156�g��GOOD�d�c.jpg");
	CreateTextureEX("�G�d�u111", 111, -149, -282, "cg/ev/l/ev156�g��GOOD�d�c_l.jpg");
	Request("�G�d�u111", Smoothing);
	Zoom("�G�d�u111", 0, 1300, 1300, null, true);
	Move("�G�d�u111", 1000, -190, -194, Dxl1, false);
	Fade("�G�d�u111", 1000, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/6000240a02">
"I love the feeling of touching your hair&. I did some fine
 work&, if I may say so myself&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/6000250a01">
"That tickles!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Move("�G�d�u111", 1000, -340, -94, Dxl3, false);
	Fade("�G�d�u112", 1000, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
I'd given into Koujaku's wishes and let him snip my hair&, 
and now for the first time in my life&, I have short hair&.

Of course I never did before because just touching my hair would hurt&, but I prepared myself for the pain when he'd 
chop it off&.

However in reality&, I didn't have that much sensation in 
most of my hair&, so it hurt a lot less than I expected&.

But it was still a first for me&, so it felt weird&.

I can still imagine the sound of the scissors snipping 
away&.

Even though I told Koujaku that it'd be just fine&, he was 
careful&.

So he took two hours to snip my hair&. Well&, at least he 
seems satisfied&.

And since Koujaku loves my hair with a passion&, he put the remains in a box made of paulownia tree&.

I protested with disgust&, but it meant something for 
Koujaku and he even gave me a serious speech&.

In the end&, he got the best of me and I let him keep it&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/6000260a02">
"Are you used to having short hair yet?"

//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/6000270a01">
"The back of my neck feels cold&.&.&.And my head feels light&."

//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/6000280a02">
"You'll get used to it sooner or later&.&.&. Fwoo&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��01");
	MusicStart("SE01",0,500,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0081]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/6000290a01">
"-! Don't breathe on me!"

//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/6000300a02">
"Haha!"

{
	CreateSE("SE01","se����_�x�b�h_�Q��01");
	MusicStart("SE01",0,700,0,1000,null,false);
}
As if to defend myself from Koujaku's blowing attack&, I 
lean back on him and he starts to happily pat and pet my 
head&.

//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/6000310a02">
"It doesn't hurt like this anymore&, right?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/6000320a01">
"Yeah&."

//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/6000330a02">
"It's kind of weird&. You used to hate it so much&, too&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/6000340a01">
"I guess&."

//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/6000350a02">
"Although the fact that you let me touch your hair as much
 as I want pleases me to no end&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/6000360a01">
"Thanks to you&, it's always messed up&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/6000370a02">
"I always fix it back&.&.&. By the way&, I haven't asked you
 this before&, is it okay?"

//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/6000380a01">
"Yeah?"

//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/6000390a02">
"For you&, uh&.&.&. I was your first&, right?"

//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/6000400a01">
"Huh? For what?"

//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/6000410a02">
"You know&. That 'experience'&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Move("�G�d�u111", 0, -642, -231, null, true);
	Move("�G�d�u111", 600, -521, -231, Dxl1, false);
	FadeDelete("�G�d�u112", 600, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0110]
&.&.&.What is he talking about?

I stare at Koujaku with suspicious eyes&.

I was confused&, but Koujaku has an unexpectedly serious 
expression&. It's a little intimidating&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0111]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/6000420a01">
"&.&.&.Well&, with a guy&."

//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/6000430a02">
"&.&.&.I see&."

Koujaku looks clearly relieved&.
It kind of irks me&.

//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/6000440a01">
"What? Why are you so relieved?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0120]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/6000450a02">
"I'm not really?"

//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/6000460a01">
"Yes you are&. What kind of person do you take me for?"

//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/6000470a02">
"I didn't mean it like that&. It's just that you've been
 cute since you were a kid&, you know? I always thought
 that&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/6000480a01">
"Usually guys don't think that about other guys&, jeez&. I'm
 not joking&."

//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/6000490a02">
"Well&, now you're a little&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0130]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/6000500a01">
"Ah?"

//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/6000510a02">
"Just kidding&, it's a joke&. Just that I think you've been
 cute since a long time ago&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/6000520a01">
"That doesn't make me too happy&."

Koujaku's mouth turns to a ridiculous smile and he starts 
petting my head again&.

//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/6000530a01">
"Then let me ask&. What about you&, then?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0131]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/6000540a02">
"Me? With guys?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0140]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/6000550a01">
"Yeah&."

//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/6000560a02">
"'Course not&. You were of course my first guy&. Calm down&.
 I'll treasure you&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/6000570a01">
"&.&.&.Idiot&. You nose-bleeding asshole&."

{
	CreateSE("SE01","se�l��_����_�ߎC��02");
	MusicStart("SE01",0,700,0,1000,null,false);

	FadeDelete("�G�d�u111", 250, null, true);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 200, 0, 5, 0, 0, 500, null, true);
	Delete("�G��");
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/6000580a02">
"-! You're still&.&.&. I don't even care anymore!"

Koujaku gets all heated up over it again and gives me a 
frustrated scowl&.

Revenge is sweet&. Well&, sort of&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0150]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/6000590a01">
"Oh yeah&. Do you have work today?"

//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/6000600a02">
"Starting at noon&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/6000610a01">
"Then meet me at Heibon when you're done&. I want to have
 dinner at my place tonight&."

//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/6000620a02">
"Got it&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/6000630a01">
"Don't play around with any girls&, you hear?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0160]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/6000640a02">
"I won't&. I would never&."

Koujaku stopped playing around as soon as we got together&.

It still looks like has quite the fanbase&, but they never 
come over to his home anymore&.

When I heard that it was part of his job&, I got seriously 
angry&.

Although now that he's finally gotten ahold of me after 
all these years&, it looks like I'm the only thing he 
thinks of&.

&.&.&.It's really embarrassing&, actually&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se����_�x�b�h_�Q�Ԃ�");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("�G�w�i120", 100, -644, 0, "cg/bg/l/bg503011_1_�g������g������_l.jpg");
	Fade("�G�w�i120", 500, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0161]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/6000650a01">
"I'm finally up&. Get off&, I'll go make something&."

//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/6000660a02">
"Mhm&."

{
	SetVolumeEX("@dm*", 3000, 0, null);
}
Even though he replied&, Koujaku doesn't let go of me&. He 
buries his face in my shoulder&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0170]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/6000670a01">
"Koujaku?"

//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/6000680a02">
"How's your health? Are your headaches okay now?"

//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/6000690a01">
"&.&.&.Yeah&. I think&. I've been feeling pretty good lately&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);
*/

	SoundPlay("@dm013",0,450,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0171]
After the tower's collapse&, my headaches completely 
disappeared&. I also haven't heard 'his' voice either&.

But I had a sense that neither had really disappeared&.

I understand&.&.&.that he is me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0180]
I've always thought that letting Granny live a peaceful 
life was a good idea&. I've never wanted anything else&.

But when I left Granny and learned things&.&.&. I knew what 
despair really was&.

I'd end up killing others with my power&.
I thought that it'd be better if I never had it&.

That's why when he took over my body&, I thought it was 
fine&.

If I wouldn't be able to live a normal life&, I'd be okay 
with anything that happened next&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G�ʂP", 10000);

	CreateTextureSP("��z1000", 100, Center, Middle, "cg/bg/bg304091_5_���]�^���[���z�[��.jpg");
	St("C",740, @0,@0,"bu�g��_�o�[�T�N���C_normal");
	FadeSt("C",0,true);

	CreateColorSP("��z�F", 5000, "624a2b");
	Request("��z�F", OverlayRender);

	CreateTextureSPmul("��z�g", 1500, Center, Middle, "cg/ef/effi��z01.jpg");

	FadeDelete("�G�ʂP", 500, null, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0181]
&.&.&.But&.
Koujaku told me&.

That because of that power&, he was able to come back&.

That saved my whithering heart&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G�ʂQ", 10000);

	Delete("��z*");
	DeleteAllSt(0,true);

	FadeDelete("�G�ʂQ", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0190]
Koujaku saved me from Scrap&, the power that trapped me&. He destroyed it for me&.

I don't know if or when he'll come back&, but I'm no longer afraid&.

Because I have Koujaku now&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_����01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se�l��_����_�ߎC��05");
	MusicStart("SE02",0,700,0,1000,null,false);
	SetVolumeEX("SE02", 1000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0191]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/6000700a02">
"If you start feeing worse&, make sure to tell me&. I've
 already decided what I'd do&."

Koujaku hugs me even tighter&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateTextureEX("�G�d�u130", 130, -56, -184, "cg/ev/m/ev156�g��GOOD�d�c_m.jpg");
	Move("�G�d�u130", 1000, -56, -104, Dxl3, false);
	Fade("�G�d�u130", 1000, 1000, null, true);
	Delete("�G�w�i120");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0192]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/6000710a02">
"I really will treasure you my whole life&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/6000720a01">
"&.&.&.Where did all of this come from&, stupid? Anyway&, I said I was up&. I'm gonna go make something&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0200]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/6000730a02">
"Let's make it all the way to the kitchen like this&."

{
	CreateSE("SE01","se�l��_����_�ߎC��01");
	MusicStart("SE01",0,500,0,800,null,false);

	CreateSE("SE02","se�l��_����_�@��02");
	MusicStart("SE02",0,700,0,1000,null,false);

	FadeDelete("�G�d�u130", 250, null, true);
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/6000740a01">
"Don't say something stupid like that!"

//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/6000750a02">
"Ow!"

I hit him&, but know that I thank Koujaku from the bottom 
of my heart for being with me&.

{	SetVolumeEX("@dm*", 2000, 0, null);}

The unchanging&, everyday things are so precious&.

{	SoundPlay("@dmedgood",0,450,false);}

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Move("�G�w�i100", 0, 272, -285, null, true);
	Fade("�G�w�i100", 1000, 1000, null, true);

	Wait(1000);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0201]
That's why&.&.&.

Not a day passes when I don't feel honestly thankful&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	ClearFadeAll(3000, true);

//�����t�@�C��["dm9999.nss"]

}
