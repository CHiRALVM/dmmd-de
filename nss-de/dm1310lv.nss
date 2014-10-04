//<continuation number="1170">
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


scene dm1310lv.nss_MAIN
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
	#bg306011_5_�q�ɊO�ϒʂ�=true;
	#bg306021_5_�q�ɓ����������=true;
	#bg306031_5_�q�ɓ����ו���=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm1320.nss";

}


scene dm1310lv.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm002",0,450,true);

	PrintBG("��w�i", 30000);

	CreateColorSP("�G�F��", 5000, "000000");
	OnBG(10,"bg306011_5_�q�ɊO�ϒʂ�");
	FadeBG(0,true);

	Delete("��w�i");
	DrawDelete("�G�F��", 500, 100, null, "blind_01_00_1", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
We leave Platinum Jail's Main Street and walk for some 
distance&. We eventually hit the warehouse&.

It looks like a lively shop on the outside&, and there are 
no visitors around&.

We get closer to the building&, carefully checking that 
there's no one around&, and go through the back door&.

{
	CreateSE("SE04","se����_�R�C��_���쉹01");
	MusicStart("SE04",0,700,0,500,null,false);

	Wait(500);

	CreateSE("SE05","se����_�h�A�o�i�Q�[�g_���J��01");
	MusicStart("SE05",0,700,0,800,null,false);

	Wait(500);

	CreateSE("SE01","se�l��_����_����01");
	MusicStart("SE01",0,700,0,1200,null,false);
	CreateSE("SE02","se�l��_����_����01");
	MusicStart("SE02",0,600,0,800,null,false);
	CreateSE("SE03","se�l��_����_����01");
	MusicStart("SE03",0,500,0,1000,null,false);

	SetVolumeEX("SE*", 3000, 0, null);
}
One of the Beni-Shigure members operates his Coil and 
releases the back door lock&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("SE*", 2000, 0, null);

	CreateColorSP("�G����", 25000, "BLACK");

	DrawTransition("�G����", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg306031_5_�q�ɓ����ו���");
	FadeBG(0,true);

	DrawDelete("�G����", 500, 100, null, "blind_01_00_1", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
It's spacious inside&, with towers of boxes all around&.

When we come inside&, some people start to gather around 
from behind the boxes&. They're the members on watch duty&.

Koujaku thanks them&, and I can tell he's happy that 
they're all together&, safe and sound&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	OnBG(10,"bg306021_5_�q�ɓ����������");
	FadeBG(500,true);

	CreateSE("SE01","se�l��_����_���01");
	MusicStart("SE01",0,500,0,800,null,false);

	CreateTextureEX("�G�w�i100", 100, -513, -365, "cg/bg/l/bg306021_5_�q�ɓ����������_l.jpg");
	Move("�G�w�i100", 700, -513, -445, Dxl1, false);
	Fade("�G�w�i100", 700, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
The effects of the drugs finally fade away&, and I move 
myself to go sit by a wall&.

Still&.&.&.that was an awful experience&.

My tension drifts away&, and Koujaku comes towards me after speaking with all of his members&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fade("�G�w�i100", 300, 0, null, true);

	CreateSE("SE03","se�l��_����_����01");
	MusicStart("SE03",0,600,0,1000,null,false);

	SetVolumeEX("SE*", 1500, 0, null);

	St("C",740, @0,@0,"st�g��_�ʏ�_cool2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/1000010a02">
"Are you doing any better?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/1000020a01">
"Yeah&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�g��_�ʏ�_cool");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/1000030a02">
"'S that so&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);

	CreateSE("SE01","se�l��_����_���01");
	MusicStart("SE01",0,500,0,1000,null,false);

	DeleteAllSt(200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
Koujaku sits next to me&.

It's been hectic&, so I forgot&.&.&.

Now that it's just the two of us&, I don't know what to 
talk about anymore&.

And I don't know how I should talk to him either&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�g��_�ʏ�_cry");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0023]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/1000040a02">
"&.&.&.Aoba&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
Koujaku breaks the silence and then quietly looks to me&.

//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/1000050a02">
"Let me apologize&. I know I can't possibly apologize
 enough&, but&.&.&."

{
	St("C",740, @0,@0,"bu�g��_�ʏ�_think2");
	FadeSt("C",200,true);
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/1000060a02">
"I'm really sorry&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/1000070a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

	SoundPlay("@dm015",0,450,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
I push my lips together in a sort of a frown when I hear 
his words&.

I think about so many things with Koujaku&.&.&. There are so 
many things I want to say&, so many things I want to ask&.

But I think I'll talk about myself first&.

I want to know things about Koujaku&.

So I have to tell Koujaku more about myself before I do 
that&.

I can't ask everything and anything of Koujaku&.
I have to keep to his pace&.

I need to do what Koujaku has always done for me&.

We're not kids anymore&.

I need to tell him how I feel&, in a direct and honest way&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/1000080a01">
"&.&.&.Koujaku&. I need to tell you something&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�g��_�ʏ�_worry3");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
A tinge of a nervousness appears in Koujaku's expression&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_sad");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/1000090a01">
"I've known you for a long time&, but now I feel like I
 don't anymore&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/1000100a01">
"But I&.&.&. said this before&, that I actually don't know
 anything about you&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


	St("C",740, @0,@0,"bu�g��_�ʏ�_sad");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0043]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/1000110a02">
"Aoba&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_sad");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/1000120a01">
"I must sound pretty full of myself&. But it was a big shock to me&.&.&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/1000130a01">
"At first&, I wondered why you were keeping things from me&.
 But it's different now&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�g��_�ʏ�_sad3");
	FadeSt("C",200,true);

	Fw("fw���t_�ʏ�_think");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/1000140a01">
"You have your circumstances and your reasons&.&.&. I
 should've thought of that first&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/1000150a01">
"And when I realized that&, I decided to believe in you and
 wait&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/1000160a01">
"I'd wait until the time would come where you'd talk to
 me&.&.&. but it never came&. I really do want to know all
 about you&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


	Fw("fw���t_�ʏ�_sad");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0055]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/1000170a01">
"About when you were away from the island&, and what
 happened then&. And what's been happening up to now&, too&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


	Fw("fw���t_�ʏ�_worry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/1000180a01">
"If you don't want to then&.&.&. No&."

{	Fw("fw���t_�ʏ�_serious");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/1000190a01">
"No&. I won't take that anymore&.&.&. Koujaku&, I want you to
 tell me about yourself&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�g��_�ʏ�_think");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/1000200a02">
"&.&.&.&.&."

{
	DeleteAllSt(200,true);
}
Koujaku lowers his head with a troubled expression&.

If he still doesn't want to talk to me after all this&, 
I'll finally give up&.

I'll take that as Koujaku's answer&.
That's what I told myself I'd do&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�g��_�ʏ�_sad3");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
It feels like it takes an eternity&, but eventually Koujaku looks up again&, to me&.

{
	St("C",740, @0,@0,"bu�g��_�ʏ�_sad2");
	FadeSt("C",200,true);
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/1000210a02">
"&.&.&.Okay&, I'll tell you&. I never knew you felt that way&. 
I only held back because I didn't want to bring you into 
this&."

{
	St("C",740, @0,@0,"bu�g��_�ʏ�_sad3");
	FadeSt("C",200,true);
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/1000220a02">
"And honestly&, I was scared of you knowing&, but you ended
 up in this mess anyway&. Ryuuhou is at the other end of
 this&."

{
	St("C",740, @0,@0,"bu�g��_�ʏ�_cool");
	FadeSt("C",200,true);
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/1000230a02">
"I'm not going to hide anymore&. I'm prepared for that&. So&,
 listen to me&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_serious");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/1000240a01">
"&.&.&.Yeah&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�g��_�ʏ�_cool");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0072]
I nod my head&, and so does Koujaku&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�g��_�ʏ�_cool2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/1000250a02">
"It was around the time when I left the island with my
 mother&. We went back to her parents' home on the
 mainland&."

{
	St("C",740, @0,@0,"bu�g��_�ʏ�_think2");
	FadeSt("C",200,true);
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/1000260a02">
"You didn't know&, but my family up there were part of the
 yakuza&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0081]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/1000270a01">
"&.&.&.So that's how it was&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�g��_�ʏ�_think");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0082]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/1000280a02">
"Yeah&. My mother was only the boss's mistress&, but I was
 still the heir&. His real wife's kid was a stillborn&, so I
 became the heir in his place&."

{
	St("C",740, @0,@0,"bu�g��_�ʏ�_cool2");
	FadeSt("C",200,true);
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/1000290a02">
"But I didn't want to succeed&, and his wife tormented my
 mother&. It was too much to take&, so we ran away to the
 island&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�g��_�ʏ�_worry3");
	St("C",740, @0,@0,"bu�g��_�ʏ�_think");
	FadeSt("C",200,true);
	FadeStPro("C", 6800, 200);
//	St("C",740, @0,@0,"bu�g��_�ʏ�_think2");
//	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/1000300a02">
"We ended up coming back&.&.&. but some things came up&. My
 mother died&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0091]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/1000310a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0092]
So his mother died&.&.&.

I had seen her numerous times while she was on the island&, she was a kind and lovely person&.

After getting it off his chest for the first time&, Koujaku lets out a small sigh&.

{
	St("C",740, @0,@0,"bu�g��_�ʏ�_think");
	FadeSt("C",200,true);
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/1000320a02">
"&.&.&.That just a while ago was the first time you've ever
 seen the tattoo on my face&, right?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FwPro("fw���t_�ʏ�_worry3",3000,"fw���t_�ʏ�_sad");
//	Fw("fw���t_�ʏ�_worry3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0093]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/1000330a01">
"Yeah&. But&.&.&. I knew about the one on your back&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�g��_�ʏ�_cry");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/1000340a02">
"So you saw&. When?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0101]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/1000350a01">
"When I threw up and ruined your kimono&, you went to wash
 it in the bathroom&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	St("C",740, @0,@0,"bu�g��_�ʏ�_normal");
//	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0102]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/1000360a02">
"Yeah&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_sad");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0103]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/1000370a01">
"The door was slightly open&. Rather than going inside&, I
 just peeked in&, and&.&.&."

{
	FwPro("fw���t_�ʏ�_sad",2300,"fw���t_�ʏ�_worry");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/1000380a01">
"I didn't mean to peek&.&.&. Sorry&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�g��_�ʏ�_cry2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0110]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/1000390a02">
"&.&.&.I see&. Whatever&. You must've been shocked by it&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_sad");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0111]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/1000400a01">
"I was&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�g��_�ʏ�_think");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0112]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/1000410a02">
"I got both of these tattoos from when I was back home on
 the mainland&. That bastard Ryuuhou was the one that forced them on me&."

//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/1000420a02">
"My old man was interested in him and told Ryuuhou to ink
 me just like that&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�g��_�ʏ�_think2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0113]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/1000430a02">
"I didn't want to have to have that burden&. You might say
 it was karma&.&.&. but both the lineage and the successor
 were fucked up&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


	CreateSE("SE01","se�l��_����_�ߎC��07");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 1500, 0, null);

	DeleteAllSt(200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0120]
He spits those words out as he fiddles with his bangs&.

{
	St("C",740, @0,@0,"bu�g��_�ʏ�_angry4");
	FadeSt("C",200,true);
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/1000440a02">
"Damn that Ryuuhou&.&.&. I tried to keep an eye out when I saw you speaking with him&, but I never thought he'd lay his
 hands on you&."

{
	St("C",740, @0,@0,"bu�g��_�ʏ�_angry");
	FadeSt("C",200,true);
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/1000450a02">
"When I saw you earlier&, I thought my heart had stopped&.
 That's why I told you never to go back&."

Does he mean when I was talking with Ryuuhou?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0121]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/1000460a01">
"That was&.&.&.when I was speaking with him outside the club?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�g��_�ʏ�_think");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0122]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/1000470a02">
"Yeah&. It was completely by chance&, too&. I went there all
 the time just to try to find him&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�g��_�ʏ�_cool2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0130]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/1000480a02">
"You know those two girls that called out to us when we
 first got here&, right?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0123]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/1000490a01">
"Yeah&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�g��_�ʏ�_cool");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0124]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/1000500a02">
"One of them had one of Ryuuhou's tattoos on her neck&. His
 have specific features so I could tell right away&. There
 was a haze of blue on it&."

{
	St("C",740, @0,@0,"bu�g��_�ʏ�_cool2");
	FadeSt("C",200,true);
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/1000510a02">
"I believed that Ryuuhou was around&, and asked her for some information about him&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0125]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/1000520a01">
"So that's why you left to go see her?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�g��_�ʏ�_think");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0140]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/1000530a02">
"Yeah&. It must've been awful for you&, but honestly&, all
 that was in my head was about Ryuuhou&. I've been after him
 since my mother died&."

//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/1000540a02">
"I've always wanted to catch him for these tattoos&.
 I couldn't find him on the mainland either&."

{
	St("C",740, @0,@0,"bu�g��_�ʏ�_think2");
	FadeSt("C",200,true);
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/1000550a02">
"I couldn't settle down&, and I told myself I couldn't stay
 like that&.&.&. so I decided to go back to Midorijima&."

{
	St("C",740, @0,@0,"bu�g��_�ʏ�_angry3");
	FadeSt("C",200,true);
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/1000560a02">
"But he was suddenly in my reach&. And he even got to you&.&."

Koujaku stops there&. He looks away as his eyes fill with a certain darkness&.

{
	St("C",740, @0,@0,"bu�g��_�ʏ�_angry4");
	FadeSt("C",200,true);
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/1000570a02">
"&.&.&.I'll never forgive Ryuuhou&. I can't even erase these
 tattoos off of me&. They'll be with me until I die&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0150]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/1000580a02">
"Even though it was under orders from my father&, I still
 can't forgive him for what he's done&."

{
	St("C",740, @0,@0,"bu�g��_�ʏ�_angry3");
	FadeSt("C",200,true);
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/1000590a02">
"He completely enjoys his work with tattoos&. He wouldn't
 even care if he had tattoos on his organs&."

{
	St("C",740, @0,@0,"bu�g��_�ʏ�_angry4");
	FadeSt("C",200,true);
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/1000600a02">
"He enjoys the cries and screams as he pushes in his
 needle&. He's a demon&."

{
	St("C",740, @0,@0,"bu�g��_�ʏ�_angry");
	FadeSt("C",200,true);
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/1000610a02">
"And he&.&.&. he's the reason why my mother died&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0151]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/1000620a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�g��_�ʏ�_think");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0160]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/1000630a02">
"I really just wanted to forget about it&. I didn't want to
 stay so bitter and angry&. I tried to wash it all away over
 time&."

{
	St("C",740, @0,@0,"bu�g��_�ʏ�_angry2");
	FadeSt("C",200,true);
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/1000640a02">
"But that bastard just had to show up&. He enjoys making
 fools of others&, the fucker&.&.&.!"

{
	CreateSE("SE01","se�l��_�Ռ�_�@��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	DeleteAllSt(200,true);
}
Koujaku punches the wall&.
As he holds his fist there&, it shakes weakly&.

{
	St("C",740, @0,@0,"bu�g��_�ʏ�_worry3");
	FadeSt("C",200,true);
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/1000650a02">
"I end up losing myself in anger whenever it comes to him&.
 I also made you go through such awful things&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


	St("C",740, @0,@0,"bu�g��_�ʏ�_think");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0161]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/1000660a02">
"I knew that it was all wrong&. I was unwilling&, and he
 still spanned that tattoo along my back&. It must be my
 karma&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


	St("C",740, @0,@0,"bu�g��_�ʏ�_cool2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0170]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/1000670a02">
"As long as he's on this earth&, I'll never be able to get
 rid of this anger&. So&.&.&. I'm going to put an end to
 it&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0171]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/1000680a01">
"An end?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�g��_�ʏ�_cool2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0172]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/1000690a02">
"Yeah&. The end of both me and him&."

{	
	St("C",740, @0,@0,"bu�g��_�ʏ�_cool");
	FadeSt("C",200,true);
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/1000700a02">
"But this is all me&. You're not involved&, and I don't want
 you to be&. I'll end it myself&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_think");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0173]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/1000710a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


	St("C",740, @0,@0,"bu�g��_�ʏ�_cool2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0180]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/1000720a02">
"I can't bother you like this&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);

	Fw("fw���t_�ʏ�_angry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0181]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/1000730a01">
"Do you think I'm stupid?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�g��_�ʏ�_cool");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0182]
I interrupt him&, and determinedly gaze into his eyes&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0183]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/1000740a01">
"When did anyone say I was bothered?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SoundPlay("@dm013",0,450,true);

	St("C",740, @0,@0,"bu�g��_�ʏ�_think");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0184]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/1000750a02">
"&.&.&.&.&."

Koujaku's gaze falls to the ground&, his expression 
perplexed&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_serious");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0190]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/1000760a01">
"Don't put words in my mouth&. I never thought of you as a
 bother&, and I never will&."

{
	Fw("fw���t_�ʏ�_worry4");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/1000770a01">
"All I'm thinking is how amazing it is for you to talk to
 me about this&. Now I can be able to do something for you&."

{
	Fw("fw���t_�ʏ�_normal");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/1000780a01">
"&.&.&.Thank you for telling me&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�g��_�ʏ�_cry");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0191]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/1000790a02">
"Aoba&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_trip");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0192]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/1000800a01">
"I had a dream about the past the other day&. I was crying
 one night when Granny wasn't home&, and you came to find
 me&."

{
	FwPro2("fw���t_�ʏ�_trip",11000,"fw���t_�ʏ�_worry",1500,"fw���t_�ʏ�_normal");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/1000810a01">
"I wonder how long it took you to find me? I was so happy&.
 You'd always help me&, like a he-&.&.&. like a dependable big
 brother&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�g��_�ʏ�_sad3");
	FadeSt("C",200,true);

	Fw("fw���t_�ʏ�_serious");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0200]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/1000820a01">
"So now I want to do that for you&. You yourself told me
 that I was just holding it up inside and that you wouldn't
 have known if I never told you&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


	FwPro("fw���t_�ʏ�_normal2",9500,"fw���t_�ʏ�_normal");
//	Fw("fw���t_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0201]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/1000830a01">
"So I thought about that&. I'll keep talking until you can
 rely on me and open up too&."

{	Fw("fw���t_�ʏ�_confuse");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/1000840a01">
"And right now&, we're both involved at this point&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0202]
I finish talking and wait for Koujaku's reaction&.

{
	St("C",740, @0,@0,"bu�g��_�ʏ�_think");
	St("C",740, @0,@0,"bu�g��_�ʏ�_normal");
	FadeSt("C",200,true);
	FadeStPro("C", 2000, 200);
}
He stood there silently with his eyebrows furrowed&, but he soon takes a deep breath and smiles&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0203]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/1000850a01">
"&.&.&.? What?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�g��_�ʏ�_smile");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0210]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/1000860a02">
"Nothing&. I was just remembering that before we came here&,
 I told you that you could tell me anything&, and now it's
 a little weird&."

{
	St("C",740, @0,@0,"bu�g��_�ʏ�_cheese2");
	FadeSt("C",200,true);
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/1000870a02">
"The worst kind of person is one that can't speak about
 himself honestly&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


	Fw("fw���t_�ʏ�_smile3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0211]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/1000880a01">
"So we're really like each other now&, huh&. It's like we
 both changed for the worst&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


	St("C",740, @0,@0,"bu�g��_�ʏ�_normal");
	St("C",740, @0,@0,"bu�g��_�ʏ�_normal2");
	FadeSt("C",200,true);
	FadeStPro("C", 2000, 200);
//	St("C",740, @0,@0,"bu�g��_�ʏ�_normal");
//	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0212]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/1000890a02">
"Maybe&.&.&. Speaking of the past&, when I saw you after
 being away from the island for so long&, I was completely
 surprised&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


	Fw("fw���t_�ʏ�_shock");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0213]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/1000900a01">
"Surprised? Why?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�g��_�ʏ�_cheese");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0220]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/1000910a02">
"Because the little baby that used to be so small and cute
 became a big boy&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_smile");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0221]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/1000920a01">
"Of course I would've!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�g��_�ʏ�_normal");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0222]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/1000930a02">
"Yeah&. But I was still surprised&. It was like a you I
 didn't know&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0223]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/1000940a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0224]
Koujaku flashes a gentle smile and looks at me&.

{
	St("C",740, @0,@0,"bu�g��_�ʏ�_happy");
	FadeSt("C",200,true);
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/1000950a02">
"You didn't even notice; I was confused because I thought I didn't know you any more either!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_confuse");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0230]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/1000960a01">
"Exactly the same thing&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�g��_�ʏ�_smile2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0231]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/1000970a02">
"I guess so&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0232]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/1000980a01">
"But when I saw you when you came back&, I wasn't really
 surprised&. I thought you hadn't changed at all&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�g��_�ʏ�_cheese2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0233]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/1000990a02">
"How cruel&. Are you saying I never grew up?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FwPro("fw���t_�ʏ�_normal",7000,"fw���t_�ʏ�_smile");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0234]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/1001000a01">
"Not that&. I said it before&, that you'd always come to help me&.&.&. You were my hero&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�g��_�ʏ�_normal2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0240]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/1001010a02">
"Hero?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FwPro("fw���t_�ʏ�_cranky2h",2000,"fw���t_�ʏ�_cranky3h");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0241]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/1001020a01">
"&.&.&.Yeah&. So what?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


	St("C",740, @0,@0,"bu�g��_�ʏ�_sad2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0242]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/1001030a02">
"&.&.&.O-Oh&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�g��_�ʏ�_sad3");
	FadeSt("C",200,true);

	Fw("fw���t_�ʏ�_serious");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0244]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/1001040a01">
"So thats why you weren't so different&, and I thought you
 were the same old Koujaku I knew&. And I acted so naive in
 front of you&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�g��_�ʏ�_normal");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0245]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/1001050a02">
"&.&.&.Nothing really changed there&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0250]
Koujaku narrows his eyes&.

//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/1001060a02">
"We were apart for some time&, but we never really changed
 at heart&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�g��_�ʏ�_smile");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0251]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/1001070a02">
"I thought I'd just grow a little&. I'm still me&. And you're still you&. Right?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0252]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/1001080a01">
"&.&.&.Right&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0253]
I nod&, and Koujaku smiles and then offers me his hand&.

{
	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,700,0,900,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

	St("C",740, @0,@0,"bu�g��_�ʏ�_smile2");
	FadeSt("C",200,true);
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/1001090a02">
"Our secret handshake&. We used to do it a lot&, remember?
 We'd be putting our hands together like this&."

{
	CreateSE("SE01","se�l��_����_�@��02");
	MusicStart("SE01",0,700,0,1000,null,false);
}
Koujaku entangles his long&, thin fingers around mine&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0260]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/1001100a01">
"&.&.&.You know&, you always used to say this one thing&."

{
	Fw("fw���t_�ʏ�_smile3");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/1001110a01">
"You'd say 'Don't give in'&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�g��_�ʏ�_normal");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0261]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/1001120a02">
"Did I?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_smile");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0262]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/1001130a01">
"You did&. I remember it really well&. Whenever you'd say
 that&, I'd feel a sorta strange power swell up in me&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�g��_�ʏ�_happy");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0263]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/1001140a02">
"&.&.&.Really&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	DeleteAllSt(200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0264]
Koujaku gives me an embarrassed smile&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�g��_�ʏ�_normal2");
	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0270]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/1001150a02">
"&.&.&.Hm? What happened here?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0271]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/1001160a01">
"What?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0272]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/1001170a02">
"Your neck is red&. It looks like you've been pricked with
 needles rather than bitten by bugs&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolume("@dm*", 1500, 0, null);

//�����t�@�C��["dm1320.nss"]

}
