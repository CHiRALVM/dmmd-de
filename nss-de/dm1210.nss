//<continuation number="70">
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


scene dm1210.nss_MAIN
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
	#bg302012_5_�O���b�^�[����02=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm1220.nss";

}


scene dm1210.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	OnBG(10,"bg302011_5_�O���b�^�[����01�V��");
	FadeBG(0,true);

	FadeDelete("��w�i", 2000, null, true);

	Wait(1000);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
&.&.&.I just had the most nostalgic dream&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);
	CreateTextureSP("�G�w�i", 100, 0, -286, "cg/bg/m/bg302011_5_�O���b�^�[����01_m.jpg");

	CreateSE("SE01","se����_�x�b�h_�Q��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("�G�w�i", 1000, @0, @50, Dxl1, false);
	FadeDelete("�G��", 1000, null, true);

	Wait(1000);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
I get up&, thinking about the dream I had&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SoundPlay("@dm012",0,450,true);

	CreatePlainSP("�G��", 5000);

	CreateTextureSP("�G�d�u", 1100, Center, Middle, "cg/ev/ev120�c�����̍g���Ƒ��t.jpg");
	SetTone("�G�d�u", Sepia);

	CreateColor("�G���o�F", 2000, 0, 0, 1024, 768, "624a2b");
	SetAlias("�G���o�F","�G���o�F");
	Request("�G���o�F", OverlayRender);

	CreateTextureSPmul("�G���o����", 3000, Center, Middle, "cg/ef/effi��z01.jpg");

	FadeDelete("�G��", 1000, null, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
It was from when Koujaku and I were kids on Midorijima&.

I met him when he moved to our neighborhood&.

His mom and Granny used to live together&, so we'd visit 
each other and play together often&.

Granny was always out of the house for work; I tried to 
get used to it&, but it was impossible&.

Now that I think about it&, I tried not to bother Granny 
since she was so busy&, but I would still become lonely&. 

I depended on her for everything&.

But I would become so anxious that I'd slip out of the 
house and cry&.

Whenever that happened&, the one looking for me was always  Koujaku&.

No matter where I was&, he'd find me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
I wasn't good at talking to others as a kid&, so I was 
quiet most of the time&.

But Koujaku waited patiently for me to open up to him&.

So he'd always be with me until Granny came home&.

We'd play at the park&, or at his house&.

He was so reassuring that I thought we was the coolest 
person ever&, my hero&. It's a little embarrassing to admit 
that now&.

Koujaku&, he&.&.&. he's always tried to understand me&.

He'd wait and listen to what I'd have to say&, and keep to 
my pace&.

Whenever he'd get just a little farther away from me&, he'd stop and wait&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G�ʂQ", 10000);

	Delete("�G���o*");
	Delete("�G�d�u");

	FadeDelete("�G�ʂQ", 500, null, true);

//	Wait(500);

	Fw("fw���t_�ʏ�_worry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0028]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm12/1000010a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
But something changed when we got older&.

Of course it would&. We couldn't stay as kids forever&.

But some things still haven't changed&.

It's been a while since I've had a dream like that&.

Things we did as a child&, but can't anymore now&.

That complete trust&.&.&. is impossible now&.

Our attitudes have changed since we were kids&, and we 
second guess each other now&.

When did we decide to do that&.&.&.?

Little by little&, I find myself missing old times&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
There's no doubt that Koujaku is hiding something&.

But he said that he was serious when he mentioned 
wanting to keep me safe&.

Koujaku was serious when he said that&.
So I'll believe in his feelings&.

I want to believe him&.

I'll wait for him to open up to me&, just like he would&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_serious");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0045]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm12/1000020a01">
"&.&.&.All right&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	CreatePlainSP("�G��", 5000);

	CreateSE("SE01","se����_�x�b�h_�|�ꍞ��");
	MusicStart("SE01",0,700,0,1000,null,false);
	OnBG(10,"bg302011_5_�O���b�^�[����01");
	FadeBG(0,true);

	Delete("�G�w�i");

	FadeDelete("�G��", 500, null, true);

//	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0046]
I don't have the time to get caught up in this&.

I move off the bed and activate Ren&.

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
[text0047]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm12/1000030a06">
"Good morning&, Aoba&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FwPro("fw���t_�ʏ�_normal",1600,"fw���t_�ʏ�_shock");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm12/1000040a01">
"Morning&.&.&. Hm?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
My jacket is on the bed&.
I pick it up; it has a fragrant smell of softener to it&.

Koujaku must've washed it along with his kimono yesterday&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se����_�h�A��_���J��01");
	MusicStart("SE01",0,700,0,1000,null,false);
	OnBG(10,"bg302041_5_�O���b�^�[�L��");
	FadeBG(1000,true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0053]
I put on my clothes and leave the room&.

The dream lingers in the back of my mind&, and I stand in 
front of Koujaku's door&.

Do it casually&, normally&.

I take a deep breath and knock on the door&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

	CreateSE("SE01","se����_�h�A��_�m�b�N01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(2500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
I wait for a bit&, but there's no answer&.

I don't hear anything else&, either&.

&.&.&.No way&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_angry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0063]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm12/1000050a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se����_�h�A��_���J��01a");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorEX("�G�F��", 5000, "000000");
	Fade("�G�F��", 500, 1000, Dxl1, true);
	OnBG(10,"bg302012_5_�O���b�^�[����02");
	FadeBG(0,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0064]
I have a horrible suspicion and I slam the door open&. 

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	DrawDelete("�G�F��", 300, 100, Dxl1, "slide_01_00_0", true);

	Wait(800);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0065]
&.&.&.There's no one in the room&.

&.&.&.Again&.
He must've gone out on his own&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
Pain pricks my chest&.
But I ignore it&.

I just decided to trust in him&.&.&. And now he does this&.

I start to feel miserable&.

But I don't think I can keep suspecting him this far along anymore&.

He keeps leaving without saying anything; there must be a 
reason for it&.

There's always a possiblity that he's caught up in 
something important&, I don't know&.

He's always been the type to carry things on his own 
shoulders&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se����_�h�A��_���J��01b");
	MusicStart("SE01",0,700,0,1000,null,false);
	OnBG(10,"bg302041_5_�O���b�^�[�L��");
	FadeBG(1000,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0077]
I slowly close the door&.

&.&.&.I'll just trust Koujaku&.

{	SoundPlay("@dm001",0,450,true);}
That's what I'll do&.
No matter what&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	Wait(500);

	Fw("fw���t_�ʏ�_serious");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0078]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm12/1000060a01">
"Ren&. We're going to go search for Koujaku&."

{	Fw("fwAM�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm12/1000070a06">
"Understood&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
Toue is a priority&, but Koujaku is more important to me 
right now&.

He's extremely important to me&.

And I feel like leaving Koujaku alone is a bad idea&.

I send Koujaku a message just in case&, and then I quickly 
go down the stairs and leave Glitter&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorSP("�G����", 5000, "BLACK");
	DrawTransition("�G����", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Wait(500);

//�����t�@�C��["dm1220.nss"]

}
