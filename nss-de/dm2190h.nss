//<continuation number="840">
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


scene dm2190h.nss_MAIN
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
	#bg302012_5_グリッター部屋02=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm2191h.nss";

}


scene dm2190h.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm005",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg302012_5_グリッター部屋02");
	FadeBG(0,true);

	$ftime=500;if($RECRIB_PLAY==1){$ftime=1000;}//回想時
	FadeDelete("上背景", $ftime, null, true);

	CreateSE("SE01","se物体_ベッド_倒れ込む");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se人体_動作_衣擦れ25");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 0, 20, 0, 0, 500, null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
Noiz brings me back to his room and pushes me on the bed&.

I fall on my back&, and a dim shock comes over me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	SetVolumeEX("@dm*", 3000, 0, null);

	CreateSE("SE01","se人体_動作_衣擦れ15");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 0, 5, 0, 0, 500, null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
Without delay&, Noiz climbs on the bed&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateTextureEX("絵背景100", 100, -1019, -487, "cg/bg/l/bg302012_5_グリッター部屋02_l.jpg");
	Fade("絵背景100", 100, 1000, null, true);

	CreateSE("SE01","se物体_ベッド_寝る01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 10, 0, 0, 2, 500, null, true);
	Delete("絵板写");

	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/9000010a01">
"Wait&, wait&, wait&, wait&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
I back away&, looking for a way to escape&, but my back 
immediately hits the wall&.

I'm completely stuck&, just like a rat in a trap&.&.&.

{
	Fw("fwノイズ_通常帽子なし_normal2");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/9000020a03">
"You sure are a sore loser&."

{
	Fw("fw蒼葉_通常_shout");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/9000030a01">
"No wonder!"

{
	Fw("fwノイズ_通常帽子なし_normal");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/9000040a03">
"No experience?"

{
	Fw("fw蒼葉_通常_rage");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/9000050a01">
"It&.&.&. it's not like that!"

{
	Fw("fwノイズ_通常帽子なし_normal2");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/9000060a03">
"Then it should be fine&. If it's not your first time&, let's do this right&. It's too late and too lame to panic now&."

{
	Fw("fw蒼葉_通常_rage");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/9000070a01">
"&.&.&.Ghn&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
Asshole&.&.&.

{
	CreateSE("SE01","se人体_動作_衣擦れ16");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se人体_動作_ベルト外す01");
	MusicStart("SE02",0,700,0,1000,null,false);
}
Noiz calmly reaches for my lower body and begins to undo 
the front of my pants&. The rattling noise echoes throughout
the room&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


	Fw("fw蒼葉_通常_shy");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/9000080a01">
"Hey&, gh&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	SoundPlay("@dm012",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
I hesitated to stop his hands&.

&.&.&.Wait a minute&.

He said so himself&, this is just a treatment for a 
physiological reaction&.

I'm the only one who thinks it's embarrassing&, Noiz 
probably doesn't feel that way&.

And then I got called lame by some younger guy&.&.&.

I'm starting to look really awkward&, but what should I do  about this?

Am I just pathetic? Maybe I should just resist this weirdo till the end&.

Do I not want it because I think it's too erotic or 
something? Does it stop being erotic if I start to think 
that it isn't?

We're both guys&, so we just happen to have the same 
things&.&.&.

Ugh&, I don't know what's right anymore&.&.&.

What should I do?

{
	Fw("fwノイズ_通常帽子なし_normal2");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/9000090a03">
"If you're scared&, I can stop&."

{
	Fw("fw蒼葉_通常_sigh");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/9000100a01">
"! N-no&, I'm not&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
I was lost in thought&, but Noiz's words snap me out of it&.

I'm still irritated by the fact that he's making me look 
like an idiot&.

If two guy friends were just fooling around&.&.&.

I guess it isn't that bad&.&.&.

I mean&, we're both guys&, so it can't be that bad&.&.&.

I tighten my jaw and look at Noiz again&.

{
	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,1000,null,false);

	SetVolumeEX("SE*", 1500, 0, null);
	SetVolumeEX("@dm*", 3000, 0, null);
}
Noiz looks me in the eye to check my reaction&, then takes 
my hand and leads it to his lower body&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm012",0,450,true);

	Fw("fw蒼葉_通常_shy2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/9000110a01">
"&.&.&.&.&."

{
	Fw("fwノイズ_通常帽子なし_normal2");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/9000120a03">
"Finally feeling like it?"

{
	Fw("fw蒼葉_通常_shy3");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/9000130a01">
"Don't say it&."

{
	Fw("fwノイズ_通常帽子なし_normal2");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/9000140a03">
"Take them off&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ24");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
Under his urging&, I start to undo Noiz's belt and buttons&. My hands&, a little sweaty&, lower his zipper&.

My heart starts to beat loudly&, and my face rapidly 
becomes hotter and hotter&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm2191h.nss"]

}