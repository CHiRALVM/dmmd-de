//<continuation number="140">
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


scene dm3340.nss_MAIN
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
	$GameName = "dm3350.nss";

}


scene dm3340.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

//※時間経過
//あきゅん「演出：瞬き演出」
	PrintBG("上背景", 30000);

	OnBG(10,"bg302051_5_グリッターエントランス壁側");
	FadeBG(0,true);
	CreateColorSP("絵色黒", 5000, "000000");
	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg302051_5_グリッターエントランス壁側.jpg");

	SetShade("絵背景", HEAVY);

	Delete("上背景");
	Fade("絵色黒", 2000, 0, null, true);

	FadeDelete("絵背景", 1000, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm33/4000010a05">
"&.&.&.Oh&, right then&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
&.&.&.When I open my eyes&, I faintly hear Mink's voice&.

It seems that at some point I just dozed off&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm33/4000020a05">
"Yeah&. There's someone I want to hand over to you&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm33/4000030a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm006",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0019]
Mink is talking with someone&.
A phone call?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
"There's someone I want to hand over to you&."
He just said that&, right?

Someone he wants to hand over?
Who?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
&.&.&.&.&.

&.&.&.No way&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,500,0,1000,null,false);

	OnBG(10,"bg302051_5_グリッターエントランス");
	FadeBG(500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
Fully awake&, I slowly lower Ren onto the floor and push my hands onto the wall to support me up&.

Mink operates his Coil&, probably to finish the call&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ18");
	MusicStart("SE01",0,700,0,1400,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
I walk up to the sofa and place my hands on the back of 
it&. He looks at me&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0026]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm33/4000040a01">
"&.&.&.What were you just talking about?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwミンク_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm33/4000050a05">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
Mink just raises his eyebrows a bit&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm33/4000060a01">
"You said that you wanted to hand someone over&."

{	Fw("fwミンク_通常_normal2");}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm33/4000070a05">
"I don't have to tell you&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
&.&.&.This again&.
I've heard those words countless times&.

Naturally anxious over what that call was about&, I open my mouth to speak&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm33/4000080a01">
"It's not me&, right?"

{	Fw("fwミンク_通常_normal");}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm33/4000090a05">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
Mink shuts up&.

It's normal for him to not answer my questions&, but this 
time I'm even more impatient&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm33/4000100a01">
"What is this?"

{	Fw("fwミンク_通常_angry4");}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm33/4000110a05">
"Shut the fuck up&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ15");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se人体_動作_衣擦れ01");
	MusicStart("SE02",0,500,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
Mink gets up from the sofa&, irritated&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm33/4000120a01">
"Hey!"

{	St("C",740, @0,@0,"stミンク_通常_normal2");
	FadeSt("C",200,true);}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm33/4000130a05">
"We're waiting for my team members to respond today&. Don't
 go outside&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

//	CreateSE("SE01","se人体_足音_歩く05");
//	MusicStart("SE01",0,700,0,800,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
With that&, Mink goes up the stairs&.

{	CreateSE("SE01","se物体_ドア木_扉開く01");
	MusicStart("SE01",0,300,0,1000,null,false);}
I hear the sound of a bedroom door opening&.

Left alone&, my anxiety swells up inside of me and I look 
up to the second floor&.

&.&.&.That phone call&, that was probably about me&, wasn't it?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);
	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/m/bg302051_5_グリッターエントランス_m.jpg");

	CreateSE("SE01","se物体_ベッド_寝る01");
	MusicStart("SE01",0,600,0,1000,null,false);

	Move("絵背景", 500, @0, @-50, null, false);
	FadeDelete("絵板写", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0053]
Unable to calm my nerves at all&, I plop down onto the 
sofa&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorEX("絵黒幕", 1000, "000000");
	Fade("絵黒幕", 1500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0055]
I cover my face with my hands to shut myself off from the 
world and try to calm down&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
If it is about me&, who is Mink handing me over to?

The police&, or&.&.&.
Toue?

No&, that can't be possible&.

But can I be sure of that?
I don't know a thing about Mink&.

He never tells me anything&, I wouldn't be able to know if 
he was deceiving me or not&.

&.&.&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	Fw("fw蒼葉_通常_pain2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0069]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm33/4000140a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
I can't depend on him for anything&.
And my distrust of him has only been getting worse&.

Mink won't lose sight of his objective no matter what he 
has to do&, probably&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
My power to destroy peoples' minds&.

It would be the most useful for negotiations with Toue&.

&.&.&.I can't&. I'm letting my imagination go wild&.

I can't depend on him&, especially after that incident with Ren&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);
	FadeDelete("絵黒幕", 1000, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0072]
&.&.&.I absolutely need to get away from Mink&.

I take my hands off of my face and quietly come to a sound decision&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	ClearFadeAll(2000, true);
	Wait(1000);

//※次ファイル["dm3350.nss"]

}
