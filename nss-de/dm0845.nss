//<continuation number="330">
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


scene dm0845.nss_MAIN
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
	$GameName = "dm0850.nss";

}


scene dm0845.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	OnBG(10,"bg104031_5_���t�������");
	FadeBG(0,true);

	FadeDelete("��w�i", 0, null, true);

//=========================
//�@�̏ꍇ
//=========================

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,700,0,800,null,false);
	SetVolumeEX("SE*", 1500, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
I get up from my bed&, and by my feet is Ren&, curled up in 
a ball&. I hold him close to me and he activates&. 

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
[text0011]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm08/4500010a06">
"Aoba&, what happened?"

{
	FwPro("fw���t_�ʏ�_confuse",5200,"fw���t_�ʏ�_normal2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/4500020a01">
"Hm? Hmmm&. I was just wondering how you were doing&. We were caught in another Drive-By&, are you okay?"

{	Fw("fwAM�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm08/4500030a06">
"There are no problems&."

{
	Fw("fw���t_�ʏ�_normal");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/4500040a01">
"I see&. I was just making sure&."

{	Fw("fwAM�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm08/4500050a06">
"Right now&, I'm fine&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/4500060a01">
"I see&."

{	Fw("fwAM�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm08/4500070a06">
"Aoba&, aren't you going to sleep? You look tired&." 

{	Fw("fw���t_�ʏ�_think");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/4500080a01">
"Well&.&.&. I keep thinking about lots of things&, and they're
 piling up&, really&."
 
</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SoundPlay("@dm012",0,450,true);

	DeleteFw();

	CreateSE("SE01","se�l��_����_����01");
	MusicStart("SE01",0,700,0,900,null,false);

	CreateSE("SE02","se�l��_����_�ߎC��18");
	MusicStart("SE02",0,600,0,1200,null,false);

	CreateTextureEX("�G�w�i100", 100, -109, -680, "cg/bg/l/bg104031_5_���t�������_l.jpg");
	Move("�G�w�i100", 1000, @0, @50, Dxl1, false);
	Fade("�G�w�i100", 1000, 1000, Dxl1, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
I sit cross-legged and Ren looks up at me&, still curled up in a ball&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_sad");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/4500090a01">
"Lots of things happened&, but&.&.&. I'm mostly thinking about
 Mizuki&."

{	Fw("fwAM�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm08/4500100a06">
"Is this about the possibility of saving him with your
 power if you had used it correctly?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/4500110a01">
"&.&.I kept wondering 'What if he never wakes up again?'&."

{	Fw("fwAM�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm08/4500120a06">
"I think it was impossible for you to have picked the exact words necessary in that situation&."

{
	Fw("fw���t_�ʏ�_worry");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/4500130a01">
"I know&. I know&, but&.&.&. It was a chance that I could have
 saved him with&. Honestly&, it hurts to think that it was
 all my fault&."

{	Fw("fw���t_�ʏ�_sad");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/4500140a01">
"And I even remembered that I had been in Rhyme&.&.&."

{	Fw("fw���t_�ʏ�_think");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/4500150a01">
"Granny&.&.&. she said that the medicine she was giving me
 held down the headaches that I got from Scrap&."

{	Fw("fw���t_�ʏ�_sad");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/4500160a01">
"I always took what she gave me&. But what if I hadn't?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwAM�@_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm08/4500170a06">
"Your headaches are becoming worse because of Scrap&,
 correct?"

{
	FwPro("fw���t_�ʏ�_think",5650,"fw���t_�ʏ�_sad");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/4500180a01">
"When I think about it&, if I don't take that medicine&, who
 knows how dangerous it will become? But it's been working
 well lately&." 

{
	Fw("fw���t_�ʏ�_worry");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/4500190a01">
"And my memories about Rhyme came back too&.&.&. I don't know
 if it was because it was my fault&, but it makes me feel
 sick&."


{	Fw("fwAM�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm08/4500200a06">
"Those two especially relate to each other&."

{
	FwPro("fw���t_�ʏ�_think",4900,"fw���t_�ʏ�_worry4");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/4500210a01">
"Yeah&. I don't have a sixth sense for it or anything&, it's
 more like a foreboding feeling&. And it looks like Toue
 knows something about me too&."

{	Fw("fw���t_�ʏ�_sad");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/4500220a01">
"Maybe it's something I forgot&, and don't know about&.&.&.
 I have a feeling it is&."
 
</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwAM�@_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm08/4500230a06">
"Is that so&.&.&."

{
	FwPro("fw���t_�ʏ�_worry",5650,"fw���t_�ʏ�_worry4");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/4500240a01">
"I definitely want to stop Toue at all costs&, but&.&.&. I also want to learn what he possibly knows about me&."

{	Fw("fw���t_�ʏ�_serious");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/4500250a01">
"I'm not psychic&, and don't know if he actually does&, but I have a feeling he knows something very important&."

{	Fw("fw���t_�ʏ�_think");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/4500260a01">
"I have this feeling that I have to speak with him&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��18");
	MusicStart("SE01",0,600,0,1500,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
With his mouth shut&, Ren puts his front paws on my knee&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwAM�@_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0052]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm08/4500270a06">
"Then&, all the more so&, you should rest&. Tomorrow is the
 big day&, isn't it?"

{	Fw("fw���t_�ʏ�_confuse");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/4500280a01">
"&.&.&.You're right&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	CreateTextureEX("�G���o�Q", 201, -250, -268, "cg/ev/m/ev026�@�����e_m.jpg");
	CreateTextureSP("�G���o", 200, -250, -218, "cg/ev/m/ev026�@�����ea_m.jpg");

	CreateColorEXmul("�G�F��", 5000, "BLACK");
	Fade("�G�F��", 0, 700, null, true);

	CreateSE("SE02","se�l��_����_�ߎC��22");
	MusicStart("SE02",0,500,0,1000,null,false);
	SetVolumeEX("SE*", 900, 0, null);

	Move("�G���o", 1000, @0, @-50, Dxl1, false);
	FadeDelete("�G��", 1000, null, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0053]
I hold up Ren and put him to my face&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	Fw("fw���t_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/4500290a01">
"First&, I gotta do what I have to do&, huh? &.&.&.Thanks&.
 I feel better after talking to you&."

//{	Fw("fwAM�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm08/4500300a06">
"Is that so?"

{
//{	Fw("fw���t_�ʏ�_smile");}
	Fade("�G���o�Q", 500, 1000, null, true);
	Delete("�G���o");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/4500310a01">
"Yeah&. All right&, let's go to bed&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

	CreatePlainSP("�G��", 6000);

	Delete("�G���o�Q");
	Delete("�G�F��");

	CreateSE("SE01","se�l��_����_�ߎC��22");
	MusicStart("SE01",0,600,0,600,null,false);
	SetVolumeEX("SE01", 4000, 0, null);

	CreateSE("SE02","se����_�x�b�h_�Q��01");
	MusicStart("SE02",0,600,0,1000,null,false);

	FadeDelete("�G��", 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
I get into bed and Ren&, who always curls up by my feet&, 
curls up near my face instead&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FadeDelete("�G�w�i100", 500, null, true);

	Fw("fw���t_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0062]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/4500320a01">
"Good night&."

{	Fw("fwAM�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm08/4500330a06">
"Good night&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0063]
I pet Ren's head and slowly close my eyes&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	ClearFadeAll(3000, true);

	Wait(3000);

//�����t�@�C��["dm0850.nss"]

}
