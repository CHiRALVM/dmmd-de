//<continuation number="110">
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


scene dm5650.nss_MAIN
{
$TEXTBOX_TYPE="暴露";
//■超速設定
	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

//■選択肢スクリプト及びフラグ設定
	//▼イベントＣＧ
	#イベントファイル名=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm5660h.nss";

}


scene dm5650.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg210011_2_暴露海と砂浜");
	FadeBG(0,true);

	CreateTextureSP("絵ＥＶ120", 120, Center, Middle, "cg/ev/ev564蒼葉、黒を認めるa.jpg");

	FadeDelete("上背景", 0, null, true);

	CreateSE("SE02","se環境_自然_波01L");
	MusicStart("SE02",2000,700,0,1000,null,true);

	FadeDelete("絵ＥＶ120", 500, null, true);

	Fw("fw蒼葉_通常_shock4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/5000010a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
My chest feels warm&.

While silently looking at my hands&, my heart sounded like 
it was just torn apart&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st蓮_通常マントなし_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/5000020a06">
"He went back inside of you&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
Ren stands next to me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st蓮_通常マントなし_normal2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/5000030a06">
"He went back because you accepted him&."

{
	Fw("fw蒼葉_通常_worry4");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/5000040a01">
"&.&.&.You're all right&, aren't you?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st蓮_通常マントなし_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/5000050a06">
"Yeah&. You recognized that I was a seperate being&. So I
 won't go back&."

{
	Fw("fw蒼葉_通常_shock4");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/5000060a01">
"I see&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE02", 3000, 0, null);
	SoundPlay("@dm015",0,450,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
Those words relax me a little&.

I accepted another "one of me" and he returned to my 
consciousness&. That was what he wanted&.

But&, Sei&.&.&.

Sei wanted me to free him&.

So&.&.&.
I fufilled that wish&.&.&.

We won't see each other anymore&.

Even though we finally did&.&.&.

Suddenly&, the tears rose to my eyes&.

{
	St("C",740, @0,@0,"st蓮_通常マントなし_normal2");
	FadeSt("C",200,true);
}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/5000061a06">
"Aoba&.&.&."

{
	Fw("fw蒼葉_通常_sad");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/5000062a01">
"&.&.&.I wonder if I could've saved him somehow&.&.&. If I
 could've saved Sei&."

{
	St("C",740, @0,@0,"st蓮_通常マントなし_normal");
	FadeSt("C",200,true);
}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/5000063a06">
"&.&.&.He said so&. That he didn't hate Toue&, but
 wouldn't become his piece&."

//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/5000064a06">
"It's likely that he thought he was saved by you in the
 end&."

{
	Fw("fw蒼葉_通常_worry");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/5000065a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
&.&.&.If only I could've saved Sei sooner&.

If only Sei and I didn't have our powers&.

Thinking of it&, I imagine the different futures we 
could've had&.

&.&.&.But&.

What's happened and what's happening now is reality&.

So&.&.&.

There must be no other road than this one&.

I roughly wiped the tears off my face&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

	CreateSE("SE02","se環境_自然_波01L");
	MusicStart("SE02",2000,700,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
With no words left&, I listened to the sound of the waves&.

It was like a dream with the scenery dyed in the color of 
twilight&.

I calmly closed the distance between Ren and I&.

I smelled the tide with a piercing pain in my chest&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateTextureEX("絵背景200", 200, -512, -414, "cg/bg/l/bg210011_2_暴露海と砂浜_l.jpg");
	Move("絵背景200", 1000, -512, -485, Dxl1, false);
	Fade("絵背景200", 1000, 1000, null, true);

	Fw("fw蒼葉_通常_shock4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/5000070a01">
"&.&.&.It's beautiful&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蓮_通常マントなし_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/5000080a06">
"Yeah&."

{
	SetVolumeEX("SE02", 3000, 0, null);

	Fw("fw蒼葉_通常_happy");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/5000090a01">
"It's my precious memory&. I'm glad that I could see this
 scenery with you&."

{
	Fw("fw蒼葉_通常_shock4");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/5000100a01">
"But you've always been with me&. We've seen the same places and things&.&.&.You must've seen this sea too&, huh? With me&."

{
	Fw("fw蓮_通常マントなし_normal");
}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/5000110a06">
"Yeah&, I did&."


{
	DeleteFw();

	FadeDelete("絵背景200", 500, null, true);

	St("C",740, @0,@0,"bu蓮_通常マントなし_normal");
	FadeSt("C",200,true);
}

While I stared at the sea&, Ren's hand touched my cheek&.

{
	DeleteAllSt(200,true);

	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 0, 3, 0, 0, 500, null, true);
	Delete("絵板写");
}
He stared at me for a moment&.&.&. and then suddenly hugged 
me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm5660h.nss"]

}
