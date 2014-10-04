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


scene dm2270.nss_MAIN
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

	#bg304021_5_東江タワー前通り=true;
	#bg304011_5_東江タワー全景=true;
	#bg304023_5_東江タワー通用口=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm2280.nss";

}


scene dm2270.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

//	SoundPlay("@dm004",0,450,true);

	PrintBG("上背景", 30000);

//	CreateColorSP("絵色黒", 5000, "000000");

//嶋：これ背景モブで大丈夫ですか？//のーん（千代子
	OnBG(10,"bg304021_5_東江タワー前通り");
	FadeBG(0,true);

/*
	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
I started up Ren and had him navigate the shortest route to the tower through the back streets&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DrawDelete("絵色黒", 500, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
Observing our surroundings carefully for any signs&, we arrived safely near the tower&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵背景", 1000, Center, -300, "cg/bg/bg304011_5_東江タワー全景.jpg");
	Move("絵背景", 1500, @0, 0, Dxl1, false);
	Fade("絵背景", 1500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
The tower standing against the star-filled sky is filled with a quiet spirit&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stノイズ_通常_normal2");
	FadeSt("C",0,true);

	FadeDelete("絵背景", 300, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm22/7000010a03">
"Let's go through the back door&."

{	Fw("fw蒼葉_通常_serious");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/7000020a01">
"Okay&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);
*/

	SetVolumeEX("@dm*", 2000, 0, null);

	DeleteFw();
	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 5000, "000000");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Delete("上背景");

	OnBG(10,"bg304023_5_東江タワー通用口");
	FadeBG(0,true);

	DeleteAllSt(0,true);
	DrawDelete("絵黒幕", 500, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
Circling around the tower&, we head for the back door&.

{	SoundPlay("@dm007a",0,450,true);}
Two guards stand there&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se戦闘_動作_走る01a");//あきゅん「ＳＥ：se戦闘_動作_走る011」
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("絵背景100", 100, -258, -195, "cg/bg/m/bg304023_5_東江タワー通用口_m.jpg");
	Move("絵背景100", 300, -141, -195, Dxl1, false);
	Fade("絵背景100", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0016]
First off&, we'll need to assess the situation&.&.&. or at 
least I planned to&, but Noiz jumps out before I can do 
anything&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/7000030a01">
"Noiz&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se戦闘_打撃_ヒット複数01");//あきゅん「ＳＥ：se戦闘_打撃_ヒット複数01」
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("絵色白", 4000, "FFFFFF");
	Wait(30);
	FadeDelete("絵色白", 70, null, true);

	Fw("fwm警備A_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【警備Ａ】
<voice name="警備Ａ" class="警備Ａ" src="voice/dm22/7000040e16">
"Ugh!"

{	Fw("fwm警備C_通常_normal");}
//【警備Ｂ】
<voice name="警備Ｂ" class="警備Ｂ" src="voice/dm22/7000050e17">
"Uah!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_衝撃_転倒02");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(50);
	CreateSE("SE02","se人体_衝撃_転倒01");
	MusicStart("SE02",0,700,0,1000,null,false);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0025]
Noiz gives the guards' faces a good whaling one after 
another&, and they're on the floor in no time&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Fw("fwノイズ_通常_angry");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0026]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm22/7000060a03">
"Come on already&."

{	Fw("fw蒼葉_通常_sigh");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/7000070a01">
"You&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030a]
That was way too risky&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateTextureEX("絵背景101", 100, -509, -444, "cg/bg/l/bg304023_5_東江タワー通用口_l.jpg");
	Fade("絵背景101", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030b]
The full force of my earlier anxiety finally swells up as 
I stand in front of the back door&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	St("C",740, @0,@0,"stノイズ_通常_serious");
//	FadeSt("C",200,true);

	Fw("fwノイズ_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm22/7000080a03">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
Noiz silently holds up his Coil to the authentication 
monitor&.

An error will appear if it isn't authorized&.

&.&.&.But&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※ぽーんとランプが変わる
//	CreateSE("SE01","se物体_コイル_操作音02");//あきゅん「ＳＥ：se物体_コイル_操作音02」
//	MusicStart("SE01",0,700,0,1000,null,false);
//	Wait(1000);
//	CreateSE("SE01","se物体_ドア東江自動_扉開く01");//あきゅん「ＳＥ：se物体_ドア東江自動_扉開く01」
//	MusicStart("SE01",0,700,0,1000,null,false);

//cono「演出：蓮ルートと同じSEにしました」
	CreateSE("SE01","se物体_コイル_操作音01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(50);
	CreateSE("SE02","se物体_コイル_操作音01");
	MusicStart("SE02",0,700,0,1000,null,false);

	Wait(300);

	CreateSE("SE01","se物体_コイル_操作音03");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(800);

	CreateSE("SE02","se物体_ドア東江自動_扉開く01");
	MusicStart("SE02",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
The light on the door lock changes from red to blue and 
the door slides outward&, ready for us to enter&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0039]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/7000090a01">
"It opened&.&.&. Why?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	St("C",740, @0,@0,"stノイズ_通常_normal2");
//	FadeSt("C",200,true);

	Fw("fwノイズ_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm22/7000100a03">
"It said so in the message a while ago&. All of the doors
 would be open&."

{	Fw("fw蒼葉_通常_worry3");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/7000110a01">
"Then&, this really is&.&.&."

{	Fw("fwノイズ_通常_serious");}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm22/7000120a03">
"A trap&, huh&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0045]
A chilling tension emerges in me and I shiver&.

But&.&.&. we have no choice&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0049]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/7000130a01">
"Let's go&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

	CreateSE("SE01","se人体_足音_走る03");
	MusicStart("SE01",0,700,0,800,null,false);

	CreateSE("SE02","se人体_足音_走る03");
	MusicStart("SE02",0,700,0,900,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
We exchange looks and enter into the tower&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SE*", 2000, 0, null);
	SetVolumeEX("@dm*", 2000, 0, null);

	CreateColorSP("絵黒幕", 5000, "000000");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Wait(500);

//※次ファイル["dm2280.nss"]

}
