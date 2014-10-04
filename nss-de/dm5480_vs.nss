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


scene dm5480_vs.nss_MAIN
{
$TEXTBOX_TYPE="ライム";
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
	$GameName = "dm5490_vs.nss";

}


scene dm5480_vs.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg201011_0_ライムパブリックフィールド");
	FadeBG(0,true);

	St("LL",710, @0,@0,"stノイズ_通常_normal2");
	St("ML",720, @0,@0,"st紅雀_通常_cool2");
	St("MR",700, @0,@0,"stクリア_正面マスクあり_normal");
	St("RR",710, @0,@0,"stミンク_通常_angry2");
	FadeAllSt(0,true);

	FadeDelete("上背景", 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{
	DeleteAllSt(200,true);
	Wait(300);
	St("C",740, @0,@0,"bu紅雀_通常_think");
	FadeSt("C",200,true);
}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm54/8000010a02">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu紅雀_通常_cool");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
In the delicate silence&, Koujaku turned and gave me a 
strong gaze&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"bu紅雀_通常_cool2");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm54/8000020a02">
"I don't really know the details&, but there's really no
 other way&, is there?"

{	Fw("fw蒼葉_通常_serious");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/8000030a01">
"It's all I can think of&."

{	St("C",740, @0,@0,"bu紅雀_通常_cool");
	FadeSt("C",200,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm54/8000040a02">
"You do know what sort of danger you're bringing yourself
 into&, right?"

{	Fw("fw蒼葉_通常_angry");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/8000050a01">
"Yeah&. Even if you weren't here&, I'd do it alone&. I want to save Ren no matter what&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/8000060a01">
"And because it's dangerous&.&.&. I can't give up&."

{	St("C",740, @0,@0,"bu紅雀_通常_cool2");
	FadeSt("C",200,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm54/8000070a02">
"&.&.&.I got it&. I can't stop you if you say that&."

{	Fw("fw蒼葉_通常_shock3");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/8000080a01">
"Koujaku&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

	SoundPlay("@dm010",0,450,true);

	$StPosノイズ=L;
	$StPosミンク=R;
	$StPosクリア=C;

	$StPriノイズ=720;
	$StPriミンク=730;
	$StPriクリア=740;

	St($StPosミンク,$StPriミンク, @0,@0,"stミンク_通常_normal");
	St($StPosノイズ,$StPriノイズ, @0,@0,"stノイズ_通常_normal");
	St($StPosクリア,$StPriクリア, @0,@0,"stクリア_正面マスクあり_normal");
	FadeSt($StPosミンク,200,false);
	FadeSt($StPosノイズ,200,false);
	FadeSt($StPosクリア,200,true);

	Fw("fw紅雀_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm54/8000090a02">
"Listen&, you guys are going to help Aoba out too!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm54/8000100a04">
"Of course!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St($StPosノイズ,$StPriノイズ, @0,@0,"stノイズ_通常_normal3");
	FadeSt($StPosノイズ,200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm54/8000110a03">
"Well&, it'd be hard for me to go back after getting
 this far&."

{	St($StPosミンク,$StPriミンク, @0,@0,"stミンク_通常_angry2");
	FadeSt($StPosミンク,200,true);}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm54/8000120a05">
"It's going to get rough soon&, so hurry up and go&."

{	Fw("fw蒼葉_通常_normal");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/8000130a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
My heart briefly fills with anxiety at the thought of 
failing to save everyone&, but also with positive emotions&.

So much has happened&.&.&. but right now I'm genuinely happy&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw紅雀_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0035]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm54/8000140a02">
"Oi&.&.&.They're coming!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DeleteAllSt(200,true);
	CreateTextureEX("絵背景", 100, Center, Middle, "cg/ev/ev550バグ状態の蓮.jpg");
	Fade("絵背景", 500, 1000, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
The guards and Allmates that were so uneasy on their feet 
started to come our way&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FadeDelete("絵背景", 300, null, true);

{	St("C",740, @0,@0,"stミンク_通常_angry2");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm54/8000150a05">
"Hey&, maniac&. Make sure that when he uses Scrap on him&,
 you make sure he doesn't log out&."

{	Fw("fwノイズ_通常_angry");}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm54/8000160a03">
"I'm not a maniac&."

{	St("C",740, @0,@0,"stミンク_通常_angry");
	FadeSt("C",200,true);}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm54/8000170a05">
"Red and gas mask&, shut down the ones coming after him&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);
	CreateSE("SE01","se人体_足音_歩く06");
	MusicStart("SE01",0,700,0,800,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0044a]
As he spoke&, Mink started to take his long strides to the 
guards and Allmates&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	DeleteAllSt(200,true);
//	CreateSE("SE01","se人体_足音_歩く06");
//	MusicStart("SE01",0,700,0,800,null,false);

//	Wait(1000);

	CreatePlainSP("絵板写", 5000);

	CreateSE("SE02","se戦闘_打撃_ヒット複数01");
	MusicStart("SE02",0,500,0,1000,null,false);

	Shake("絵板写", 500, 0, 7, 0, 0, 1000, Dxl1, false);
	Wait(200);
	Shake("絵板写", 500, 6, 0, 0, 0, 1000, Dxl1, false);
	Wait(200);
	Shake("絵板写", 500, 0, 8, 0, 0, 1000, Dxl1, false);
	Wait(200);
	FadeDelete("絵板写", 500, null, false);

	Wait(300);

	SetVolumeEX("SE01", 1000, 0, null);

	CreateSE("@EFWIN/SEL02a","se環境_戦闘_戦闘01L");
	Request("@EFWIN/SEL02a", Lock);
	MusicStart("@EFWIN/SEL02a",6000,700,0,800,null,true);

	CreateSE("@EFWIN/SEL02b","se環境_戦闘_紅雀とノイズのもみ合い01L");
	Request("@EFWIN/SEL02b", Lock);
	MusicStart("@EFWIN/SEL02b",6000,300,0,400,null,true);
	$dm5480_vs雑音=true;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0044b]
He then promptly began to completely destroy them all&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"stノイズ_通常_normal");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0045]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm54/8000180a03">
"Now&, let's get this party started&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE02", 1000, 0, null);

	CreateSE("SE03","se人体_動作_抱く01");
	MusicStart("SE03",0,700,0,1000,null,false);
	Move("@StC*", 200, @0, @70, Axl1, false);
	DeleteAllSt(200,true);

	CreateSE("SE81","se物体_パソコン_キーボード操作01");
	MusicStart("SE81",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
Noiz sits down&, pulls out the keyboard and monitor on his 
Coil&, and starts to work&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"st紅雀_通常_normal2");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm54/8000190a02">
"Hey&, how are you going to use Scrap on yourself?"

{	Fw("fw蒼葉_通常_serious");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/8000200a01">
"I don't know&. But I have to try something&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorEX("絵色黒", 5000, "000000");
	Fade("絵色黒", 500, 1000, null, true);

	DeleteAllSt(0,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0053]
I sat on the floor on my knees&, closed my eyes&, and began 
to focus&.

But&.&.&. it doesn't work&, the surrounding noise is bothering me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FadeDelete("絵色黒", 500, null, true);

	Fw("fw蒼葉_通常_hard2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0054]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/8000210a01">
"&.&.&.Shit&. The stuff around me is distracting&."

{	St("C",740, @0,@0,"st紅雀_通常_angry3");
	FadeSt("C",200,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm54/8000220a02">
"Would earplugs work?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("@EFWIN/SEL*", 400, 300, null);
	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
I cover my ears with my hands&. But I still can hear sounds&.

Maybe I can't focus as well because I'm frustrated&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pain2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/8000230a01">
"It's no good&.&.&."

{	St("C",740, @0,@0,"buクリア_正面マスクあり_normal");
	FadeSt("C",200,true);}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm54/8000240a04">
"So the outside noise is bothering you&."

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/8000250a01">
"Yeah&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

//※次ファイル["dm5490_vs.nss"]

}
