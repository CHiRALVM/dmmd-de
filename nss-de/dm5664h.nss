//<continuation number="1660">
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


scene dm5664h.nss_MAIN
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
	$GameName = "dm5670.nss";

}


scene dm5664h.nss
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

	CreateTextureSP("�G�w�i100", 100, -710, -523, "cg/bg/l/bg210011_2_�\�I�C�ƍ��l_l.jpg");

	FadeDelete("��w�i", 0, null, true);

	SoundPlay("@dm015",0,450,true);

	Move("�G�w�i100", 1000, @0, @50, Dxl1, false);
	Fade("�G�w�i100", 1000, 0, null, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0450]
&.&.&.I felt happy&.

That I could actually be with Ren like this&.

That when I return to reality&, Ren will still be with me 
as an Allmate&.

The way it's always been&. <k>
&.&.&.But&.

I won't be able to hold him like this as a human any more&.

He holds this form in Rhyme&, but that's only been set as a fighting ground&.

And I don't think I'll be able to use Scrap again on 
myself&.

This was a complete miracle&.

It's because I didn't want to lose Ren&.&.&. that this 
miracle happened&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0460]
I'm glad I had this chance to hold Ren like this in 
the end&.

I'm glad that I was able to feel his warmth and his 
feelings&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0461]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm56/6001360a01">
"&.&.&."

{
	Fw("fw�@_�ʏ�}���g�Ȃ�_normal2");
}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm56/6001370a06">
"&.&.&.Aoba&."

{
	Fw("fw���t_�ʏ�_shock4");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm56/6001380a01">
"&.&.&.Hm?"

{
	Fw("fw�@_�ʏ�}���g�Ȃ�_normal");
}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm56/6001390a06">
"There's something I'm worried about&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0470]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm56/6001400a01">
"What?"

{
	Fw("fw�@_�ʏ�}���g�Ȃ�_normal2");
}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm56/6001410a06">
"You have a habit of overthinking things as far as
 possible&."

//�y�@�z
<voice name="�@" class="�@" src="voice/dm56/6001420a06">
"So you don't control your emotions very well&."

{
	Fw("fw�@_�ʏ�}���g�Ȃ�_normal");
}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm56/6001430a06">
"You won't say that you hate relying on others&, either&."

{
	Fw("fw�@_�ʏ�}���g�Ȃ�_normal2");
}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm56/6001440a06">
"And&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_confuse");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0480]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm56/6001450a01">
"&.&.&.Haha!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0481]
Oddly enough&, I laughed&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�@_�ʏ�}���g�Ȃ�_worry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0482]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm56/6001460a06">
"&.&.&.What? Is something weird?"

{
	Fw("fw���t_�ʏ�_happy");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm56/6001470a01">
"No&, sorry&. That's not it&. I was wondering about what
 just happened&."

{
	Fw("fw�@_�ʏ�}���g�Ȃ�_normal");
}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm56/6001471a06">
"&.&.&.&.&."

{
	Fw("fw���t_�ʏ�_trip");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm56/6001472a01">
"Besides&, you know me pretty well&. Well&, of course you do&."

{
	Fw("fw�@_�ʏ�}���g�Ȃ�_normal2");
}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm56/6001480a06">
"Aoba&.&.&."

{
	Fw("fw���t_�ʏ�_think");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm56/6001490a01">
"Ren&, you were with me longer than I can remember&. So you'd know me the best&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_sad");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0490]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm56/6001500a01">
"More than anyone&.&.&. More than me&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se�l��_����_����01");
	MusicStart("SE01",0,700,0,1000,null,false);

	SetVolumeEX("SE*", 1500, 0, null);

	Move("�G�w�i100", 500, @0, @-50, Dxl1, false);
	Fade("�G�w�i100", 500, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0491]
Ren silently nuzzles his forehead into my shoulder&. 
I also let my arms off and pet his head&.

This is a special time just for us&.

&.&.&.And suddenly&, an emotion swelled in my chest&.

The&.&.&. feeling of loneliness again&.

I'll still be with Ren even when I get back to reality&.

We have a special bond that no one else could have&.

We'll never be separated&. 
We'll always be together&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0500]
&.&.&.But it's just as I thought it'd be&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0501]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm56/6001510a01">
"&.&.&.&.&."

{
	Fw("fw�@_�ʏ�}���g�Ȃ�_worry");
}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm56/6001520a06">
"Aoba?"

{
	Fw("fw���t_�ʏ�_sad");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm56/6001530a01">
"&.&.&.&.&.It hurts a little&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0502]
My voice is sort of muddled&, and the tears swell up in 
my eyes&.

I shut my eyes and take deep breaths&.

My emotions are silently boiling over&.

I can't stop the tears from streaming down my face&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,700,0,800,null,false);

	SetVolumeEX("SE*", 1500, 0, null);

	Move("�G�w�i100", 500, -710, -573, Dxl1, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0510]
Ren rubs his nose against the nape of my neck&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	Fw("fw���t_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0511]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm56/6001540a01">
"&.&.&.I'm sorry&, just give me a second&.&.&."

//{	Fw("fw�@_�ʏ�}���g�Ȃ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm56/6001550a06">
"Aoba&."

//{	Fw("fw���t_�ʏ�_normal");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm56/6001560a01">
"I'm just greedy&.&.&. I'm happy enough just be being
 together&, but&.&.&. I'm sorry&."

//{	Fw("fw���t_�ʏ�_normal");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm56/6001570a01">
"You must hate it if I say it's painful&.&.&."

//Along the lines of "If I'm hurting&, then it must be the worst thing for you" or something

//{	Fw("fw�@_�ʏ�}���g�Ȃ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm56/6001580a06">
"Aoba&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	Fw("fw���t_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0520]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm56/6001590a01">
"I&.&.&. I love you&, Ren&."

//{	Fw("fw�@_�ʏ�}���g�Ȃ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm56/6001600a06">
"&.&.&.!"

//{	Fw("fw���t_�ʏ�_normal");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm56/6001610a01">
"I always will&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0521]
These surely must be the tears that will get me going&.

Maybe that's why I'm crying here&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,700,0,1000,null,false);

	SetVolumeEX("SE*", 1500, 0, null);

	Move("�G�w�i100", 1000, @0, @50, Dxl1, false);
	Fade("�G�w�i100", 1000, 0, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0522]
Ren puts both of his hands to my cheeks&, lovingly putting 
his forehead to mine&.

Just like I always would do&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0530]
The tender warmth between the two of us makes it 
unbearable&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"fu�@_�ʏ�}���g�Ȃ�_normal2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0531]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm56/6001620a06">
"We'll always be together&."

{
	Fw("fw���t_�ʏ�_worry3");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm56/6001630a01">
"&.&.&.Yeah&."

{
	St("C",740, @0,@0,"fu�@_�ʏ�}���g�Ȃ�_normal");
	FadeSt("C",200,true);
}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm56/6001640a06">
"I've always been watching you&, Aoba&. I'll always be
 there&."

{
	St("C",740, @0,@0,"fu�@_�ʏ�}���g�Ȃ�_smile");
	FadeSt("C",200,true);
}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm56/6001650a06">
"So don't cry&, Aoba&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0540]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm56/6001660a01">
"Ren&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);


	CreateSE("SE01","se�l��_����_����01");
	MusicStart("SE01",0,600,0,1200,null,false);

	SetVolumeEX("SE*", 1500, 0, null);

	DeleteFw();
	DeleteAllSt(200,true);

	CreateTextureEX("�G�w�i110", 110, -516, -100, "cg/bg/l/bg210011_2_�\�I�C�ƍ��l_l.jpg");
	Move("�G�w�i110", 1000, -516, -70, Dxl1, false);
	Fade("�G�w�i110", 1000, 1000, null, true);

	Wait(3000);

	CreateSE("SE02","se�l��_����_�L�X01");
	MusicStart("SE02",0,500,0,1200,null,false);

	Wait(1000);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0541]
I lightly kissed Ren&.

Ren licks my lips and then the tears off my cheeks&.

I want to feel him until the last second&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�����t�@�C��["dm5670.nss"]

}