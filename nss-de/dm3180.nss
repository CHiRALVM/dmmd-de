//<continuation number="160">
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


scene dm3180.nss_MAIN
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
	$GameName = "dm3190.nss";

}


scene dm3180.nss
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

	FadeDelete("��w�i", 0, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
With Mink gone&, the tension dissolves into the air&.

But instead&, a wave of regret and self-hatred takes 
its place&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��03");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 1800, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
I pick up my bag by my feet&, and take both Ren and my 
medicine out&.

{
	CreateSE("SE01","se����_�s���P�[�X_�ӂ�01");
	MusicStart("SE01",0,400,0,1500,null,false);
	Wait(400);
	SetVolumeEX("SE*", 0, 0, null);
}
//���r�d�F������o��
I only have a few tablets left&.
So for now&, I just take one&.

&.&.&.The headache should soften with this&.

A small sense of safety lets me exhale in relief&, and I 
start up Ren&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se����_����_�@�N��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(500);

	Fw("fwAM�@_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm31/8000010a06">
"&.&.&.Aoba&."

{	Fw("fw���t_�ʏ�_worry2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm31/8000020a01">
"&.&.&.Ren&."

{	Fw("fwAM�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm31/8000030a06">
"Are you all right? You look like you're in bad
 condition&."

{	Fw("fw���t_�ʏ�_pain2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm31/8000040a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
Just hearing Ren suddenly makes me feel miserable&, and I 
tightly hug his tiny body&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_sad");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm31/8000050a01">
"It really hurts&.&.&. What do I do&.&.&.?"

{	Fw("fwAM�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm31/8000060a06">
"You should rest for a little&. You were in quite the
 dangerous situation back there&."

{	SoundPlay("@dm006",0,450,true);}
{	Fw("fw���t_�ʏ�_worry4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm31/8000070a01">
"Back there?"

{	Fw("fwAM�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm31/8000080a06">
"Rather than from the effects of the drugs&, it was your
 consciousness which was in turmoil with your other&,
 temporary one&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwAM�@_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm31/8000090a06">
"Because of that&, your self-control weakened and your
 power&, Scrap&, sent you in a state of half-conscioussness&."

{	Fw("fw���t_�ʏ�_worry3");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm31/8000100a01">
"Are you serious&.&.&.?"

{	Fw("fwAM�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm31/8000110a06">
"If you stayed in there&, Scrap would have possibly gone
 berserk&."

{	Fw("fw���t_�ʏ�_worry4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm31/8000120a01">
"&.&.&.Berserk?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
I shiver at those words&.

What happens when Scrap goes berserk?

Even more people will go crazy?

And it might even have an influence on me as well&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0044a]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm31/8000130a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	CreateTextureSP("�G���摜", 110, Center, 0, "cg/bg/bg303011_5_��y�{�݊O�ϓ�����u���b�N.jpg");
	CreateTextureSPmul("�G����z�g", 1500, Center, Middle, "cg/ef/effi��z01.jpg");
	CreateColor("�G���o�F", 2000, 0, 0, 1024, 768, "624a2b");
	SetAlias("�G���o�F","�G���o�F");
	Request("�G���o�F", OverlayRender);

	FadeDelete("�G��", 500, null, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0044b]
Mink&.&.&. he really did go there to "stretch out my wings"&.

I kind of doubt that&, but at the same time I don't know 
why he took me along anyway&.

No way&.&.&.

Even if that's so&, I still can't tell what his objective 
is&.

More like I can't understand anything Mink is 
thinking&.&.&.

Why did Mink go there?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	Delete("�G��*");

	FadeDelete("�G��", 500, null, true);

	CreateSE("SE01","se�l��_����_����01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm31/8000140a01">
"Ouch&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
I stand up&, holding Ren&, and walk over to the sofa to rest my pained body&.

{
	CreateSE("SE01","se�l��_����_�ߎC��15");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateSE("SE02","se�l��_����_�ߎC��25");
	MusicStart("SE02",0,450,0,800,null,false);

	CreateTextureEX("�G�w�i100", 100, -805, -536, "cg/bg/l/bg302051_5_�O���b�^�[�G���g�����X_l.jpg");
	Move("�G�w�i100", 500, -805, -495, Dxl1, false);
	Fade("�G�w�i100", 500, 1000, null, true);
}
I throw myself onto the sofa and sit&.

&.&.&.I wonder what will happen now&.

I really don't want to see Mink right now&.

And besides&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
While I was doing that&.&.&. thing&, with Mink&, I was 
absolutely terrified&.

It was like facing an abyss and being told to not peek or 
else&.&.&.
An awful feeling&.

What's going to happen to me from now on?
I don't even know&.

I don't know what will happen to Mink&, either&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwAM�@_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0062]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm31/8000150a06">
"&.&.&.Aoba&, you should rest for a little&."

{	Fw("fw���t_�ʏ�_sad");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm31/8000160a01">
"&.&.&.You're right&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se�l��_����_����01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateSE("SE02","se�l��_����_�ߎC��15");
	MusicStart("SE02",0,700,0,1000,null,false);

	Move("�G�w�i100", 500, @0, @25, Dxl1, false);
	FadeDelete("�G�w�i100", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0063]
While holding Ren&, I get up from the sofa&, walk up the 
staircase&, and head back to my room&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	OnBG(10,"bg302011_5_�O���b�^�[����01");
	FadeBG(1000,true);

	Wait(500);

	CreateSE("SE01","se����_�x�b�h_�|�ꍞ��");
	MusicStart("SE01",0,700,0,1000,null,false);

	OnBG(10,"bg302011_5_�O���b�^�[����01�V��");
	FadeBG(300,true);
	BGPlainShake(1000,300,0,8,0,0,1000,Dxl1,true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0064]
I lay down on the bed&, put my headphones on&, and listen to 
music&.

So I can fall asleep without thinking about anything 
today&.

I can't say I'm tired&, though&.&.&.

I just do whatever I can&, and try to sink into the music 
with my eyes closed&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);

	ClearFadeAll(2000, true);

	Wait(2000);

//�����t�@�C��["dm3190.nss"]

}
