//<continuation number="70">
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


scene dm0590.nss_MAIN
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
	$GameName = "dm0590sl.nss";

}


scene dm0590.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm002",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg101051_5_旧住民区通り裏路地06");
	FadeBG(0,true);

	DrawDelete("上背景", 1000, 100, null, "blind_01_00_1", true);

//==============================================
//※以降、合流
//==============================================

	SetVolumeEX("@dm*", 3000, 0, null);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0009]
I walked the rest of the way without a word&, and eventually
my surroundings changed&.

A little farther and I'll be at Heibon&.

Just the thought of being back warmed my heart with a 
feeling of extreme nostalgia&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg102031_1_平凡前通り.jpg");

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
When I see Heibon's sign&, a shadow suddenly jumps at me 
from above&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※加工：遠距離（or遠くから近付いてくる）

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm05/9000010a04">
"Master-----!!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※衝突音_ずだん、とクリア地面へ落下
	CreateSE("SE01","se人体_衝撃_転倒01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 500, 0, 20, 0, 0, 500, Dxl1, true);
	Delete("絵板写");

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/9000020a01">
"C-Clear!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
The one who was calling to me&.&.&. was Clear&.

{
	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,700,0,1000,null,false);

	SoundPlay("@dm003",0,450,true);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 300, 0, 5, 0, 0, 500, null, true);
	Delete("絵板写");

	St("C",740, @0,@0,"fuクリア_正面マスクあり_normal");

	Move("@StNameC/C*", 0, @0, @50, null, true);
	Move("@StNameC/C*", 200, @0, @-50, Dxl1, false);
	FadeSt("C",200,true);
}
Clear fell face first to the ground&, but he stood up&, 
upbeat as usual&, and clung to me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE02","se人体_動作_抱く01");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 5, 0, 0, 0, 500, null, true);
	Delete("絵板写");

	ClearComicNext(800,390,-16,25,"fu");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【クリア】※漫符：飛汗２
<voice name="クリア" class="クリア" src="voice/dm05/9000030a04">
"Master! I'm so glad! Were you taken away somewhere!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	ClearComicNexDelete();

	Fw("fw蒼葉_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/9000040a01">
"Ah&.&.&. No&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"fuクリア_通常マスクあり_normal");
	FadeSt("C",200,true);

	ClearComicNext(800,390,-16,25,"fu");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【クリア】※漫符：飛汗２
<voice name="クリア" class="クリア" src="voice/dm05/9000050a04">
"As long as you're safe! Last night I heard your voice from far away&, and I got worried!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	ClearComicNexDelete();

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/9000060a01">
"My voice?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm05/9000070a04">
"Yes!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
Last night&.&.&.
That's when I was taken to that building by Mink&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm0590sl.nss"]

}
