//<continuation number="250">
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


scene dm2510.nss_MAIN
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
	
	#bg304112_5_東江タワー中ホール扉前=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm2520.nss";

$HALevel=1;

}


scene dm2510.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm018",0,450,true);

	PrintBG("上背景", 30000);

//→efムービーの関係上、洗脳ノイズ戦が東江の間になるので、ここもそれに統一（千代子
//あきゅん「※：背景を変更しました(2/21)」
	OnBG(10,"bg304121_5_東江タワー東江の間");
	FadeBG(0,true);

	FadeDelete("上背景", 0, null, true);

//あきゅん「演出：倒壊アラーム、未搭載」
//※非常アラームが鳴り響き、部屋全体の照明が赤くなる

//あきゅん「演出：タワー倒壊、とりあえずの仮入れ」
//※ごごごご、とタワーが揺れ始める
	CreateSE("SE01","se物体_東江タワー_爆発01");//あきゅん「ＳＥ：se物体_東江タワー_爆発01」
	MusicStart("SE01",0,700,0,1000,null,false);
	CreatePlainSP("絵板写", 100);
	Shake("絵板写", 300, 10, 60, 0, 0, 1000, null, true);

	CreateSE("SE11","se物体_東江タワー_地鳴り01L");//あきゅん「ＳＥ：se物体_東江タワー_地鳴り01L」
	MusicStart("SE11",0,700,0,1000,null,true);
//	Shake_Loop("@絵板写","shake01");
	dm1500ShakeLoop("絵板写","bg304121_5_東江タワー東江の間",400,1);

	CreateSE("SE22","se物体_東江タワー_アラーム01L");
	MusicStart("SE22",0,700,0,1000,null,true);


//	CreateColorEXover("絵色赤", 500, "RED");
//	Fade("絵色赤", 500, 1000, Dxl1, true);

	CreateColorEXmul("絵色赤", 500, RED);
	Fade("絵色赤", 300, 600, null, true);


/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【合成音声】
<voice name="合成音声" class="合成音声" src="voice/dm25/1000010e14">
"A state of emergency has been declared&. Please immediately exit the building&. I repeat&. A state of emergency has been declared&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);
*/

	SetVolumeEX("SE22", 5000, 300, null);

	CreateVOICE("合成音声","dm25/1000010e14");
	MusicStart("合成音声",0,700,0,1000,null,true);

	St("C",740, @0,@0,"buノイズ_通常_shock");
	FadeSt("C",200,true);

/*
//キャラの色味を濃くします。
	CreateTextureEXmul("絵背景1", 800, 261, -16, "cg/bu/buノイズ_通常_normal.png");

//キャラの上だけに赤が乗るようにしています。
	CreateStencil("マスク１",1000, 261, -16,128,"cg/bu/buノイズ_通常_normal.png",false);
	SetAlias("マスク１","マスク１");

	CreateColor("マスク１/色１", 900, 0, 0, 1024, 576, "RED");
	Fade("マスク１/色１",0,0,null,true);
	SetAlias("マスク１/色１","マスク１/色１");
	Request("マスク１/色１", MulRender);

//	WaitKey();

	Fade("絵背景1", 500, 500, null, false);
	Fade("マスク１/色１", 500, 500, null, false);
	DrawTransition("マスク１/色１", 500, 0, 400, 500, null, "cg/data/circle_09_00_0.png", false);

	RedFlash(200);

//	WaitKey();

//	RedFlashDelete();
//	Delete("絵背景1");
//	Delete("マスク１");
//	Delete("マスク１/色１");

//	WaitKey();
*/

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/1000020a03">
"Hey&, snap out of it!"

{
	Fw("fw蒼葉_通常_pinch");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/1000030a01">
"Don't mind me&.&.&. Noiz&, at least you have to&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"buノイズ_通常_angry");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/1000040a03">
"And you're spouting crazy shit now of all times? Come on&,
 hurry up and stand!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_掴む01");
	MusicStart("SE01",0,700,0,1000,null,false);

	DeleteFw();
	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
Noiz grabs my hand and helps me up&.

But&, I'm&.&.&.

"He" is&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pinch");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/1000050a01">
"It's too late for me&.&.&. You at least need to make it out&,
 hurry&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se人体_動作_払う01");//あきゅん「ＳＥ：se人体_動作_払う01」
	MusicStart("SE01",0,800,0,1000,null,false);
	CreateColorSP("絵色白", 4000, "FFFFFF");
	Wait(30);
	FadeDelete("絵色白", 70, null, true);

	St("C",740, @0,@0,"buノイズ_通常_angry");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/1000060a03">
"Ngh!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
I pulled my hand away from Noiz as he tried to pull me 
along&.

I was going to apologize immediately&.&.&. but didn't&.

I thought it would be fine for me to stay as I was&.

If Noiz can just get out on his own&.&.&.

But Noiz doesn't leave&.

{
	SetVolumeEX("@dm*", 3000, 0, null);
	SetVolumeEX("SE*", 5000, 200, null);

	SoundPlay("@dm015",0,450,true);
}
He was frowning&, closing his lips tightly and looked at 
the hand I shook off&.

And to protect it&, he wrapped it in his other hand&.

&.&.&.Huh?

Does that mean&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/1000070a01">
"&.&.&.Don't tell me&, you&.&.&."

{
	St("C",740, @0,@0,"buノイズ_通常_angry");
	FadeSt("C",200,true);
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/1000080a03">
"&.&.&.That's right&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
For the first time&, Noiz glares at me with eyes full of 
real emotion&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/1000090a03">
"It hurts&. Because of you&."

{
	St("C",740, @0,@0,"buノイズ_通常_angry3");
	FadeSt("C",200,true);
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/1000100a03">
"Because you used Scrap on me&.&.&. Because you pulled me out&, I can feel things again&."

{
	St("C",740, @0,@0,"buノイズ_通常_angry");
	FadeSt("C",200,true);
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/1000110a03">
"It's your fault&. Are you going to throw me out after doing something like that without asking?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sad");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/1000120a01">
"But&.&.&. My power&.&.&. at this rate&, it's going to go out of
 control&.&.&. Then I can't return you back to how you were&.&."

{
	Fw("fw蒼葉_通常_worry");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/1000130a01">
"Also&, I might destroy everyone&.&.&. even you&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/1000140a01">
"So&, just leave me&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

	CreateSE("SE01","se人体_動作_払う01");//あきゅん「ＳＥ：se人体_衝撃_ビンタ01」
	MusicStart("SE01",0,900,0,1000,null,false);
	CreateColorSP("絵色白", 4000, "FFFFFF");
	Wait(30);
	FadeDelete("絵色白", 300, null, true);

	Fw("fw蒼葉_通常_worry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/1000150a01">
"Agh!"

{
	St("C",740, @0,@0,"buノイズ_通常_angry");
	FadeSt("C",200,true);
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/1000160a03">
"&.&.&.That hurt&. You might be in pain too&, but hitting you
 hurts me too&. What happened to me? It hurts a lot more
 because I've never known this feeling before&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/1000170a03">
"I don't know if you're going to go out of control or
 whatever&, but whatever happens&, I'll do something about
 it&. I'll think of a solution&."

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/1000180a03">
"And also&.&.&. you destroyed my world with your power&, and
 returned the feeling to my body&."

{
	St("C",740, @0,@0,"buノイズ_通常_angry");
	FadeSt("C",200,true);
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/1000190a03">
"So your power isn't evil&. At least that's my opinion&."

{
	St("C",740, @0,@0,"buノイズ_通常_serious");
	FadeSt("C",200,true);
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/1000200a03">
"I'll think of what's going to happen to you from now on&.
 So let's go together&. Okay?"

{
	Fw("fw蒼葉_通常_shock3");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/1000210a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

	CreateSE("SE01","se人体_動作_抱く01");//あきゅん「ＳＥ：se人体_動作_抱く01」
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se人体_動作_衣擦れ02");
	MusicStart("SE02",0,600,0,900,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
Noiz places his hand on my shoulder&.
I stand up slowly to support it&.

When Noiz hit me&.&.&.
Something warm was born inside me&.

And mysteriously enough&, my headache was erased&.

"His" shadow&.&.&. was fading too&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

$HALevel=1;

	CreateSE("SE02","se人体_足音_歩く03");
	MusicStart("SE02",0,700,0,800,null,false);

	CreateSE("SE03","se人体_足音_歩く03");
	MusicStart("SE03",0,600,0,900,null,false);

	CreatePlainSP("絵板写", 5000);
	OnBG(10,"bg304122_5_東江タワー東江の間");
	FadeBG(0,true);
	FadeDelete("絵背景", 500, null, true);

	Fw("fwノイズ_通常_normal3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0064]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/1000220a03">
"&.&.&.You know&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 2000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0065]
Noiz opens his mouth when we walk to the door&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwノイズ_通常_normal3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0066]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/1000230a03">
"I think I know what you mean now&."

{
//	Fw("fwノイズ_通常_normal");
	FwPro("fwノイズ_通常_normal2",5500,"fwノイズ_通常_smile");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/1000240a03">
"The thing about wanting to help somebody who's in pain&. If you know pain&, you'll know how it feels&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_confuse");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/1000250a01">
"&.&.&.Yeah&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
When I hear his words&, a warm&, pleasant feeling bubbles up in my chest&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);

//※次ファイル["dm2520.nss"]

	SetVolumeEX("SE*", 2000, 0, null);
	SetVolumeEX("合成*", 2000, 0, null);
	ClearFadeAll(2000, true);

}
