//<continuation number="130">
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


scene dm2590.nss_MAIN
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
	$GameName = "dm2600.nss";

}


scene dm2590.nss
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

	FadeDelete("��w�i", 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
Today I'm sitting behind the counter at Heibon as usual&.

My eyes follow the ever-dilligent Bonjin-kun&, who is 
sweeping around the shop&.

{
	SoundPlay("@dm012",0,450,true);

	CreateTextureEX("�G�w�i100", 100, -458, -364, "cg/bg/l/bg102011_5_���}�X��_l.jpg");
	Fade("�G�w�i100", 500, 1000, null, true);
}
Lots of strange events did happen&, but now I live my life 
as if they were all a dream&.

I guess I'm very happy about it&.

But there's only one thing missing in my life&.

It's Noiz&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
I'm still not sure where he left to after our Rhyme battle&.

Without contacting me via e-mail or phone&, before I knew 
it&, a long time had passed&.

At first I searched for him as if my life depended on it&, 
but I gradually realized that it was better to stop&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
The Rhyme battle with him&.&.&.

I won&. Without using Scrap&.

Once he understood what real pain was&, he couldn't do 
Rhyme like he used to anymore&.

I guess he's still strong enough&, but that was the reason 
I won&, for sure&.

I suspect that Noiz was probably conscious of the fact 
that he had changed&.

Nevertheless&, he challenged me to a game&.

Unlike when he was eager for a rematch because he was 
obsessed by the fact that he lost to me&.

Now I think he wanted a fight with us both in the same 
position&, between people who knew each others' pain&.

That's why I didn't want to lose either&.
I wasn't allowed to lose&.

Because I needed him to realize that even if he knew what 
pain was&, he still wouldn't win at Rhyme&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
After the game&, Noiz congratulated me with his usual smile&.

And after that&.&.&. I ended up never seeing him again&.

Could it be that Noiz's pride was ripped to pieces because I won?

Should I not have won?

There was dismay and regret when I thought like that&.

But&, I thought it over because that wasn't true&.

Noiz isn't&.&.&. he isn't that kind of guy&.

Although I don't know where he went&, he surely had some 
plans&.

So&, he's doing just fine somewhere&.
I decided to think so&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwAM�@_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm25/9000010a06">
"Aoba&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
Ren&, who was curled at my feet&, looked up at me&.

{
	Fw("fw���t_�ʏ�_normal2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/9000020a01">
"Hmmm?"

{
	Fw("fwAM�@_�ʏ�_normal");
}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm25/9000030a06">
"Your feelings seem unstable and choppy&. The situation here has been the same all the time&, are you okay?"

{
	Fw("fw���t_�ʏ�_confuse");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/9000040a01">
"I'm fine&, I'm fine&. It's a matter of time&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
That's right&. If time passes&.&.&.

{
	FadeDelete("�G�w�i100", 500, null, true);

	SetVolumeEX("@dm*", 2000, 0, null);
}
//�����H�F����
//�y�H��z
<voice name="�H��" class="�H��" src="voice/dm25/9000050b07">
"Aoba-kun&."

{
	Fw("fw���t_�ʏ�_shock");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/9000060a01">
"Aah&, yes&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SoundPlay("@dm001",0,450,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
I heard Haga-san's voice from the back&, straightened myself
and turned around&.

{
	CreateSE("SE01","se����_��_��01");
	MusicStart("SE01",0,700,0,1000,null,false);
}
Haga-san brought a big white box and placed it on the 
counter&.

{
	St("C",740, @0,@0,"st�H��_�ʏ�_normal2");
	FadeSt("C",200,true);
}
//�y�H��z
<voice name="�H��" class="�H��" src="voice/dm25/9000070b07">
"Could you confirm the contents of this box?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/9000080a01">
"Yes&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�H��_�ʏ�_normal");
	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
When I get up from the chair&, about to check the contents 
of the box&, I notice that Haga-san is looking at me&, 
smiling&.

{
	Fw("fw���t_�ʏ�_shock");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/9000090a01">
"? Is something wrong?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�H��_�ʏ�_normal2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0052]
//�y�H��z
<voice name="�H��" class="�H��" src="voice/dm25/9000100b07">
"No&, I'm sorry&. Please don't mind me&. I was thinking how
 wonderful it is to work with you again&."

{
	St("C",740, @0,@0,"st�H��_�ʏ�_normal");
	FadeSt("C",200,true);
}
//�y�H��z
<voice name="�H��" class="�H��" src="voice/dm25/9000110b07">
"I've recently realized how fortunate I am to go through
 the days on a usual schedule&."

{
	Fw("fw���t_�ʏ�_normal");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/9000120a01">
"That certainly is true&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�H��_�ʏ�_normal");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y�H��z
<voice name="�H��" class="�H��" src="voice/dm25/9000130b07">
"Yeah&.&.&."

{
	SetVolumeEX("@dm*", 1000, 0, null);
	DeleteFw();
	DeleteAllSt(200,true);
}
Haga-san and I feel a bit downcast&. 


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����t�@�C��["dm2600.nss"]

}
