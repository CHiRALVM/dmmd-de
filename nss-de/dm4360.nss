//<continuation number="360">
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


scene dm4360.nss_MAIN
{
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
	$GameName = "dm4370.nss";

}


scene dm4360.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg302021_5_グリッター居間");
	FadeBG(0,true);

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg302021_5_グリッター居間天井.jpg");
	Rotate("絵背景", 0, @0, @180, 0, null, true);

	FadeDelete("上背景", 1000, null, true);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm43/6000010a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,600,0,1000,null,false);

	CreateSE("SE02","se人体_動作_衣擦れ18");
	MusicStart("SE02",0,700,0,1000,null,false);

	FadeDelete("絵背景", 500, Dxl2, true);

	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
When I open my eyes&, I jerk up from the sofa&.

&.&.&.How long was I out for?

When I look at my Coil&, I see that not even fifteen
minutes has passed&. I feel a little relieved&.

My headache was completely gone&, most likely due to 
Clear's song&.

Right&, where's Clear?
I don't see him anywhere&.

&.&.&.Ren either&. Are they on the first floor?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
I get up off the couch and hear the sound of voices coming from downstairs&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	Fw("fwクリア_通常マスクなし_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm43/6000020a04">
"Why is it that you don't call Master 'Master'?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm43/6000030a06">
"What do you mean?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵背景弐", 100, Center, Middle, "cg/bg/bg302061_5_グリッター階段.jpg");
	Fade("絵背景弐", 500, 1000, null, true);

	OnBG(10,"bg302051_5_グリッターエントランス");
	FadeBG(0,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
I peek down from under the handrail&.

It's Clear and Ren&.
Those two&.&.&. a person and a dog speaking to each other&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwクリア_通常マスクなし_serious2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm43/6000040a04">
"Aren't you Master's Allmate? Then he's your master because you're his possession&."

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm43/6000050a06">
"That's true&."

{	Fw("fwクリア_通常マスクなし_serious");}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm43/6000060a04">
"Then why don't you call him Master?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm43/6000070a06">
"I may not be answering your question&, but Aoba is Aoba&.
 There's no reason to call him Master&."

{	Fw("fwクリア_通常マスクなし_worry");}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm43/6000080a04">
"Is that so? Then you're addressing Master as your equal&.
 But that's not how it should be&."

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm43/6000090a06">
"In that case&, it's not I&, but rather Aoba&, who decides&.
 I just follow what he asks of me&."

{	Fw("fwクリア_通常マスクなし_sad");}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm43/6000100a04">
"Is that so? I don't think that's a valid point&."

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm43/6000110a06">
"Aoba's name is Aoba&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwクリア_通常マスクなし_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm43/6000120a04">
"But Master is your master&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
&.&.&.I feel like their conversation has taken a rather sour 
turn&.

I guess it's because Clear is trying to justify his 
reasons for calling me Master&.

But then&, I guess that means I'm just as good as anyone 
else to him&.

Well&.&.&. I call Haga-san 'Boss'&, so Clear calling me Master is a bit understandable&.&.&.

//Manager or Tenchou based on whatever Yuffie dubbed him as&. I'd rather go with Manager however

Their dispute continues downstairs&.

Seeing how they'll never reach a settlement&, I go 
downstairs to the first floor&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_足音_歩く05");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(500);
	FadeDelete("絵背景弐", 1100, null, true);
	Wait(1000);
	SetVolumeEX("SE*", 200, 0, null);

	Fw("fw蒼葉_通常_sigh3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm43/6000130a01">
"What kind of stupid things are you guys talking about?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stクリア_通常マスクなし_shock");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm43/6000140a04">
"Master!"

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm43/6000150a06">
"Aoba!"

{
	SoundPlay("@dm012",0,450,true);
	St("C",740, @0,@0,"stクリア_通常マスクなし_shock");
	FadeSt("C",200,true);
}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm43/6000160a04">
"Were you listening to our conversation?"

{	Fw("fw蒼葉_通常_sigh2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm43/6000170a01">
"Well&, more like I didn't have a choice but to&."

{	St("C",740, @0,@0,"stクリア_通常マスクなし_serious");
	FadeSt("C",200,true);}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm43/6000180a04">
"Then what do you think&, Master? Whether Ren-san and I
 should call you Master or not&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_confuse");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm43/6000190a01">
"I think you can do whatever you want&, really&."

{	St("C",740, @0,@0,"stクリア_通常マスクなし_serious2");
	FadeSt("C",200,true);}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm43/6000200a04">
"Whatever I want? What do you mean?"

{
	FwPro("fw蒼葉_通常_normal",4000,"fw蒼葉_通常_confuse");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm43/6000210a01">
"You can call me as Master if you want&. But I'd rather be
 called by my own name&, though&."

{	St("C",740, @0,@0,"stクリア_通常マスクなし_sad");
	FadeSt("C",200,true);}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm43/6000220a04">
"Is that it?"

{	Fw("fw蒼葉_通常_normal2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm43/6000230a01">
"And by the way&, would you call anyone other than me
 Master?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stクリア_通常マスクなし_worry2");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm43/6000240a04">
"That's&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
Clear freezes up when he thinks about it&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stクリア_通常マスクなし_serious");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm43/6000250a04">
"&.&.&.That's true&. Although I've never thought of calling
 anyone Master other than you in the first place&."

{	St("C",740, @0,@0,"stクリア_通常マスクなし_serious2");
	FadeSt("C",200,true);}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm43/6000260a04">
"But if that situation were to appear&, I would call them
 Master&."

{	Fw("fw蒼葉_通常_confuse");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm43/6000270a01">
"&.&.&.So that's how it is&."

{	St("C",740, @0,@0,"stクリア_通常マスクなし_worry");
	FadeSt("C",200,true);}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm43/6000280a04">
"Did I say something odd?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm43/6000290a01">
"No&, see? All I'm talking about is me&, but isn't my name
 Aoba?"

{	St("C",740, @0,@0,"stクリア_通常マスクなし_worry");
	FadeSt("C",200,true);}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm43/6000300a04">
"Yes&."

{	Fw("fw蒼葉_通常_confuse");}

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm43/6000310a01">
"Well&, you can call just about anyone Master&. And you could say that makes me feel kind of lonely&."

{	St("C",740, @0,@0,"stクリア_通常マスクなし_shock");
	FadeSt("C",180,true);}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm43/6000320a04">
"Lonely?"

{
	Fw("fw蒼葉_通常_normal");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm43/6000330a01">
"Yeah&, but don't sweat it&. You've always been thinking
 about me&, anyway&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stクリア_通常マスクなし_serious");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm43/6000340a04">
"Of course!"

{	FwPro("fw蒼葉_通常_smile2",3000,"fw蒼葉_通常_smile");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm43/6000350a01">
"Just the thought is enough&. Now&, let's get ready to head
 out&."

{	St("C",740, @0,@0,"stクリア_通常マスクなし_worry");
	FadeSt("C",200,true);}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm43/6000360a04">
"&.&.&.All right&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteSt("C", 200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
Clear goes up the stairs&, his head tilted to show how he 
doesn't exactly consent&.

I want to interrupt him&, but I decide to let it go&.

Clear should loosen up&.&.&.

I pick up Ren and go back upstairs to the second floor to 
prepare&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);
	ClearFadeAll(2000, true);

	Wait(1000);

//※次ファイル["dm4370.nss"]

}
