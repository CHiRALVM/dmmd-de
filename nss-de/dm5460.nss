//<continuation number="10">
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


scene dm5460.nss_MAIN
{
$TEXTBOX_TYPE="���C��";
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
	$GameName = "dm5470_vs.nss";

}


scene dm5460.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	OnBG(10,"bg201011_0_���C���p�u���b�N�t�B�[���h");
	FadeBG(0,true);

	FadeDelete("��w�i", 0, null, true);

	Fw("fw���t_�ʏ�_shout");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm54/6000010a01">
"Ren!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);

	CreateTextureEX("�G�w�i", 100, Center, Middle, "cg/ev/m/ev004���@�N��_m.jpg");
	Move("�G�w�i", 0, -113, -256, null, true);

	CreateSE("SE01","se�l��_����_����01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("�G�w�i", 500, -113, -196, Dxl1, false);
	Fade("�G�w�i", 500, 1000, null, true);
	Wait(300);

	SoundPlay("@dm015",0,450,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
I rush over to Ren&, who was thrown across the room&, and 
hold him&.

&.&.&.Why wasn't Ren in his human form in Rhyme?

I knew the reason&.

I've solved the puzzle&.&.&. I now know why Ren snapped at 
me&, why we were together&, why I had his memories&.

And why Ren and I were both sharing his memories&.

The "Ren" I'm holding right now is just his vessel&.

At the beginning&, this dog Allmate wasn't Ren&.

The conciousness of Ren who had always been with me&, who 
had always been watching me&, who had always been by my 
side was&.&.&.

Ren's existence&.&.&.

&.&.&.Which is inside of me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);

	CreateColorEX("�G�F��", 5000, "000000");
	Fade("�G�F��", 1000, 1000, null, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
When I was a kid who could barely talk&, I would always 
speak with "someone" that was inside my head&.

I dimly remember that&.

But later on I stopped speaking with that "someone" and 
ended up forgetting them&.

The person who I would speak with then&.
That&.&.&. was Ren&.

Ren has always been inside of me&.

The Allmate that had Ren inside of it was just his avatar&.

Although I don't know if Ren was using the Allmate&, or how he did it&.

But he isn't in this Allmate anymore&.

Right now&.&.&.<k> He's inside me&.

In my head&.

I can't believe it myself&.&.&. but that's what I assume&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fade("�G�F��", 300, 0, null, true);
	Delete("�G�F��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
I want to see him&.
I want to speak with him&.

But I can't like this&.

Ren had abandoned this Allmate&, and shut himself away back where he was&.

So&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fade("�G�w�i", 500, 0, null, true);
	Delete("�G�w�i");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
In the game of Rhyme&, using electric waves&, players would 
jointly create projections&.

Peoples' consciousnesses were directly linked in the 
public fields&.

So that's to say that it's not impossible to use Rhyme to 
achieve that&.

Then I only have one method left&.

Of course I've never done it before&, so it may not even 
work&. And the probability of it not working is high&.

But I can't think of anything else&.

That's&.&.&.

I'll use <k>Scrap on myself&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 500, 0, null);
	Wait(500);

//�����t�@�C��["dm5470_vs.nss"]

}
