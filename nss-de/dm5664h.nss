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
	$GameName = "dm5670.nss";

}


scene dm5664h.nss
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

	CreateTextureSP("絵背景100", 100, -710, -523, "cg/bg/l/bg210011_2_暴露海と砂浜_l.jpg");

	FadeDelete("上背景", 0, null, true);

	SoundPlay("@dm015",0,450,true);

	Move("絵背景100", 1000, @0, @50, Dxl1, false);
	Fade("絵背景100", 1000, 0, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
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
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
I'm glad I had this chance to hold Ren like this in 
the end&.

I'm glad that I was able to feel his warmth and his 
feelings&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0461]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6001360a01">
"&.&.&."

{
	Fw("fw蓮_通常マントなし_normal2");
}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/6001370a06">
"&.&.&.Aoba&."

{
	Fw("fw蒼葉_通常_shock4");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6001380a01">
"&.&.&.Hm?"

{
	Fw("fw蓮_通常マントなし_normal");
}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/6001390a06">
"There's something I'm worried about&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6001400a01">
"What?"

{
	Fw("fw蓮_通常マントなし_normal2");
}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/6001410a06">
"You have a habit of overthinking things as far as
 possible&."

//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/6001420a06">
"So you don't control your emotions very well&."

{
	Fw("fw蓮_通常マントなし_normal");
}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/6001430a06">
"You won't say that you hate relying on others&, either&."

{
	Fw("fw蓮_通常マントなし_normal2");
}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/6001440a06">
"And&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_confuse");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6001450a01">
"&.&.&.Haha!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0481]
Oddly enough&, I laughed&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蓮_通常マントなし_worry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0482]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/6001460a06">
"&.&.&.What? Is something weird?"

{
	Fw("fw蒼葉_通常_happy");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6001470a01">
"No&, sorry&. That's not it&. I was wondering about what
 just happened&."

{
	Fw("fw蓮_通常マントなし_normal");
}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/6001471a06">
"&.&.&.&.&."

{
	Fw("fw蒼葉_通常_trip");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6001472a01">
"Besides&, you know me pretty well&. Well&, of course you do&."

{
	Fw("fw蓮_通常マントなし_normal2");
}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/6001480a06">
"Aoba&.&.&."

{
	Fw("fw蒼葉_通常_think");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6001490a01">
"Ren&, you were with me longer than I can remember&. So you'd know me the best&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sad");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6001500a01">
"More than anyone&.&.&. More than me&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,700,0,1000,null,false);

	SetVolumeEX("SE*", 1500, 0, null);

	Move("絵背景100", 500, @0, @-50, Dxl1, false);
	Fade("絵背景100", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
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
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
&.&.&.But it's just as I thought it'd be&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0501]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6001510a01">
"&.&.&.&.&."

{
	Fw("fw蓮_通常マントなし_worry");
}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/6001520a06">
"Aoba?"

{
	Fw("fw蒼葉_通常_sad");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6001530a01">
"&.&.&.&.&.It hurts a little&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0502]
My voice is sort of muddled&, and the tears swell up in 
my eyes&.

I shut my eyes and take deep breaths&.

My emotions are silently boiling over&.

I can't stop the tears from streaming down my face&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,800,null,false);

	SetVolumeEX("SE*", 1500, 0, null);

	Move("絵背景100", 500, -710, -573, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
Ren rubs his nose against the nape of my neck&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0511]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6001540a01">
"&.&.&.I'm sorry&, just give me a second&.&.&."

//{	Fw("fw蓮_通常マントなし_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/6001550a06">
"Aoba&."

//{	Fw("fw蒼葉_通常_normal");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6001560a01">
"I'm just greedy&.&.&. I'm happy enough just be being
 together&, but&.&.&. I'm sorry&."

//{	Fw("fw蒼葉_通常_normal");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6001570a01">
"You must hate it if I say it's painful&.&.&."

//Along the lines of "If I'm hurting&, then it must be the worst thing for you" or something

//{	Fw("fw蓮_通常マントなし_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/6001580a06">
"Aoba&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6001590a01">
"I&.&.&. I love you&, Ren&."

//{	Fw("fw蓮_通常マントなし_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/6001600a06">
"&.&.&.!"

//{	Fw("fw蒼葉_通常_normal");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6001610a01">
"I always will&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0521]
These surely must be the tears that will get me going&.

Maybe that's why I'm crying here&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,1000,null,false);

	SetVolumeEX("SE*", 1500, 0, null);

	Move("絵背景100", 1000, @0, @50, Dxl1, false);
	Fade("絵背景100", 1000, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0522]
Ren puts both of his hands to my cheeks&, lovingly putting 
his forehead to mine&.

Just like I always would do&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
The tender warmth between the two of us makes it 
unbearable&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"fu蓮_通常マントなし_normal2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0531]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/6001620a06">
"We'll always be together&."

{
	Fw("fw蒼葉_通常_worry3");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6001630a01">
"&.&.&.Yeah&."

{
	St("C",740, @0,@0,"fu蓮_通常マントなし_normal");
	FadeSt("C",200,true);
}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/6001640a06">
"I've always been watching you&, Aoba&. I'll always be
 there&."

{
	St("C",740, @0,@0,"fu蓮_通常マントなし_smile");
	FadeSt("C",200,true);
}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/6001650a06">
"So don't cry&, Aoba&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6001660a01">
"Ren&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);


	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,600,0,1200,null,false);

	SetVolumeEX("SE*", 1500, 0, null);

	DeleteFw();
	DeleteAllSt(200,true);

	CreateTextureEX("絵背景110", 110, -516, -100, "cg/bg/l/bg210011_2_暴露海と砂浜_l.jpg");
	Move("絵背景110", 1000, -516, -70, Dxl1, false);
	Fade("絵背景110", 1000, 1000, null, true);

	Wait(3000);

	CreateSE("SE02","se人体_動作_キス01");
	MusicStart("SE02",0,500,0,1200,null,false);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0541]
I lightly kissed Ren&.

Ren licks my lips and then the tears off my cheeks&.

I want to feel him until the last second&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※次ファイル["dm5670.nss"]

}