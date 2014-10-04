//<continuation number="210">
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


scene dm4493ed.nss_MAIN
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
	#ev449クリアBADＥＤ=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm9999.nss";

	//★エンドロール
	PreSetRoll(5);
	TheEND(5);

#BDED4=1;//クリアバッドエンドフラグ取得

}


scene dm4493ed.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 5000, "000000");

	CreateTextureEX("絵ＥＶ101L", 101, -1024, -576, "cg/ev/l/ev449クリアBADＥＤ_l.jpg");
	CreateTextureEX("絵ＥＶ101", 101, Center, Middle, "cg/ev/ev449クリアBADＥＤ.jpg");
	CreateTextureEX("絵ＥＶ100", 100, Center, Middle, "cg/ev/ev449クリアBADＥＤa.jpg");
	Zoom("絵ＥＶ100", 0, 2000, 2000, null, true);
	Fade("絵ＥＶ100", 0, 1000, null, true);
	Request("絵ＥＶ100", Smoothing);
	SetBlur("絵ＥＶ100", true, 2, 500, 200, false);

	MoveFTP1("@絵ＥＶ100",15000,10,8);

	FadeDelete("上背景", 1000, null, true);

	Wait(2000);

	CreateSE("SE01","se人体_足音_歩く03L");
	MusicStart("SE01",7000,500,0,700,null,true);

	Wait(2000);

	FadeDelete("絵色黒", 4000, null, true);

	Wait(1000);

//※演場面転換
//※プラチナジェイル地下
//※こつこつ、と階段を降りていくクリア

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
&.&.&.&.&.

{
	SetVolumeEX("SE*", 3000, 0, null);
}
&.&.&.These footsteps&.

They're Clear's&.

I raise my head&, about to doze off&.

{
	CreateSE("SE01","se人体_足音_歩く03L");
	MusicStart("SE01",0,650,0,700,null,true);
}
I can only sense Clear coming closer&, as I can't see 
anything but black&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SE*", 500, 0, null);

	Wait(1000);

	CreateSE("SE02","se物体_ドア鉄_扉開く01a");
	MusicStart("SE02",0,700,0,1000,null,false);

	Wait(3000);

	CreateSE("SE02","se物体_ドア鉄_扉開く01b");
	MusicStart("SE02",0,700,0,1000,null,false);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//※ＳＥ：がちゃっと牢を開ける
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm44/9300010a04">
"&.&.&.Good morning&, Aoba-san&."

//【クリア】
<voice name="クリア" class="クリア" src="voice/dm44/9300020a04">
"The weather's nice out today&. But even if I told
 you that you wouldn't understand it in here&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Wait(500);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,1300,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

	Wait(1500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm44/9300030a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
Clear gently caresses my cheek&.
His touch is cold&.

{
	CreateSE("SE02","se人体_動作_抱く01");
	MusicStart("SE02",0,500,0,800,null,false);
}
He moves around behind me&.
He hugs me tenderly from behind&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm44/9300040a04">
"How do you feel? Does it hurt anywhere?"

{
//※鎖の音
//おがみ：SE　流用
	CreateSE("SE01","se人体_動作_ベルト外す01");
	MusicStart("SE01",0,700,0,600,null,false);
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm44/9300050a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm44/9300060a04">
"You look well&. That's good&. I'd be sad if you were hurt&,
 Aoba-san&."

//【クリア】
<voice name="クリア" class="クリア" src="voice/dm44/9300070a04">
"Little by little&, we'll make progress&. It's not something
 that you can rush&. Right?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,800,null,false);
	SetVolumeEX("SE*", 1800, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
Clear rubs the area around my chest and abdomen&, and then 
my thighs&.&.&. There he starts to touch me more tenderly&.

{
	SoundPlay("@dm014",0,450,true);
}
When did I lose these limbs?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※演出：ここでeｖ表示がいいです。
//おがみ：演出　まだ全体見せない　血が出るのが後のため
	Move("絵ＥＶ101L", 60000, -551, 0, null, false);
	Fade("絵ＥＶ101L", 1000, 1000, null, true);

	MoveFTP1stop();
	Delete("絵ＥＶ100");

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm44/9300080a04">
"Aoba-san&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
He calls my name&, his voice dripping with ecstasy&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm44/9300090a04">
"I'm not human&. But I want to always be with you&,
 Aoba-san&."

//【クリア】
<voice name="クリア" class="クリア" src="voice/dm44/9300100a04">
"All humans' lives end at some point&, right? I don't ever
 want to lose you&. That's why&.&.&."

//【クリア】
<voice name="クリア" class="クリア" src="voice/dm44/9300110a04">
"I asked Toue to turn you into something like me&."

//【クリア】
<voice name="クリア" class="クリア" src="voice/dm44/9300120a04">
"When I gave him the data&, he told me I could do as I
 liked&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,800,0,800,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
Clear holds my body close to him and buries his face in 
my hair&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm44/9300130a04">
"I can't become human&. So I want to make you the same as
 me&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm44/9300140a04">
"But you'll always be beautiful&.&.&. No&, I want to make you 
 even more beautiful&. Like a doll&."

//【クリア】
<voice name="クリア" class="クリア" src="voice/dm44/9300150a04">
"So that's why you can't have too much&. Because a doll
 doesn't need a will of its own&."

//【クリア】
<voice name="クリア" class="クリア" src="voice/dm44/9300160a04">
"Having arms and legs gives you a sense of freedom&, so
 they're not necessary&."

//【クリア】
<voice name="クリア" class="クリア" src="voice/dm44/9300170a04">
"Both your eyes and your legs are done&, so next are your
 arms&. I can't have you using your arms freely&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,700,0,1200,null,false);
	CreateSE("SE02","se人体_動作_抱く01");
	MusicStart("SE02",0,500,0,1200,null,false);
	SetVolumeEX("SE02", 1000, 0, null);

	Move("絵ＥＶ101L", 2000, 0, -148, AxlDxl, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
He takes my hand away from gripping the bars and pulls it 
close to him&, kissing it&. Seconds later&, he plunges his 
teeth into my wrist&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※ＳＥ：鎖の音
//おがみ：SE　流用
	CreateSE("SE01","se人体_動作_ベルト外す01");
	MusicStart("SE01",0,700,0,600,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm44/9300180a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
The faint scent of blood appears&. 
He licks the bitten area with his tongue&.

The chain on my neck makes a dry clinking noise&.

I can't feel any pain&, any coldness&.&.&. or any warmth&.

I'm only something that breathes&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm44/9300190a04">
"I'm looking forward to it&. Soon&, Aoba-san will be as truly beautiful as I've wished for&."

//【クリア】
<voice name="クリア" class="クリア" src="voice/dm44/9300200a04">
"My one and only Aoba-san&.&.&. I'm looking forward to it&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateTextureEX("絵ＥＶ100", 1000, Center, Middle, "cg/ev/ev449クリアBADＥＤa.jpg");
	Zoom("絵ＥＶ100", 0, 2000, 2000, null, true);
	SetBlur("絵ＥＶ100", true, 2, 500, 200, false);
	MoveFTP1("@絵ＥＶ100",15000,10,8);

	Fade("絵ＥＶ100", 1000, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
Clear whispers into my ear with his entrancing voice&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
Clear isn't the same Clear he once was&.

After he was taken away by α&, he was repaired&, but also 
changed&, by Toue&.

So he returned to his original state&.

&.&.&.But I don't care any more&.

To me&, someone who is unable to move at all&, Clear is my 
entire world&.

If Clear is happy&, then&.&.&.<k>
I don't need to care about anything else&.

{
	SetVolumeEX("@dm*", 3000, 0, null);
}
Everything is how Clear wants it to be&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Fade("絵ＥＶ101", 0, 1000, null, true);
	Fade("絵ＥＶ100", 1800, 0, null, true);
	MoveFTP1stop();
	Delete("絵ＥＶ100");

	Wait(1500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070a]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm44/9300210a04">
"Aoba-san&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SoundPlay("@dmedbd04",0,450,true);

	Wait(3000);

	ClearFadeAll(4000, true);

	Wait(2000);

//※次ファイル["dm9999.nss"]

}
