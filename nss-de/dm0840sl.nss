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


scene dm0840sl.nss_MAIN
{
//■超速設定なし
	$MainGameName="@->"+$GameName;
	GameMainSet();
	call_scene $MainGameName;
	GameMainSet2();

//■選択肢スクリプト及びフラグ設定
	//▼イベントＣＧ
	#イベントファイル名=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	//


}


scene dm0840sl.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――


	TextBoxDelete(150);

	PrintBG("上背景", 30000);

	OnBG(10,"bg104031_5_蒼葉宅自室消灯");
	FadeBG(0,true);

	FadeDelete("上背景", 0, null, true);



//▼選択肢：同ポイントキャラ
//→▽紅雀を思い浮かべる（紅雀ポイント＋１）
//→▽ノイズを思い浮かべる（ノイズポイント＋１）
//→▽ミンクを思い浮かべる（ミンクポイント＋１）
//→▽クリアを思い浮かべる（クリアポイント＋１）

//★ルート判定(3/3)
//ポイントが競合しているキャラのみ、選択肢出現

//※ここの選択肢でキャラルート確定。
//$DM_ROUTE_SEL=[0, 0,0,0,0]
//キャラ競合数、紅雀、ノイズ、ミンク、クリア


//■選択肢
	if($DM_ROUTE_SEL[0]==4){
		SetChoice04(" Think of Koujaku"," Think of Noiz"," Think of Mink"," Think of Clear");
		WaitChoice04();
		
		if($SetChoiceSelect==0){		$DM_ROUTE=1;}
		else if($SetChoiceSelect==1){	$DM_ROUTE=2;}
		else if($SetChoiceSelect==2){	$DM_ROUTE=3;}
		else if($SetChoiceSelect==3){	$DM_ROUTE=4;}
	}else if($DM_ROUTE_SEL[0]==3){
	
		if($DM_ROUTE==31){
			SetChoice03(" Think of Koujaku"," Think of Noiz"," Think of Mink");
			WaitChoice03();
			
			if($SetChoiceSelect==0){		$DM_ROUTE=1;}
			else if($SetChoiceSelect==1){	$DM_ROUTE=2;}
			else if($SetChoiceSelect==2){	$DM_ROUTE=3;}
		
		}else if($DM_ROUTE==32){
			SetChoice03(" Think of Koujaku"," Think of Noiz"," Think of Clear");
			WaitChoice03();
			
			if($SetChoiceSelect==0){		$DM_ROUTE=1;}
			else if($SetChoiceSelect==1){	$DM_ROUTE=2;}
			else if($SetChoiceSelect==2){	$DM_ROUTE=4;}
		
		}else if($DM_ROUTE==33){
			SetChoice03(" Think of Koujaku"," Think of Mink"," Think of Clear");
			WaitChoice03();
			
			if($SetChoiceSelect==0){		$DM_ROUTE=1;}
			else if($SetChoiceSelect==1){	$DM_ROUTE=3;}
			else if($SetChoiceSelect==2){	$DM_ROUTE=4;}
		
		}else if($DM_ROUTE==34){
			SetChoice03(" Think of Noiz"," Think of Mink"," Think of Clear");
			WaitChoice03();
			
			if($SetChoiceSelect==0){		$DM_ROUTE=2;}
			else if($SetChoiceSelect==1){	$DM_ROUTE=3;}
			else if($SetChoiceSelect==2){	$DM_ROUTE=4;}
		}
	
	}else if($DM_ROUTE_SEL[0]==2){
	
		if($DM_ROUTE==21){
			SetChoice02(" Think of Koujaku"," Think of Noiz");
			WaitChoice02();
			
			if($SetChoiceSelect==0){		$DM_ROUTE=1;}
			else if($SetChoiceSelect==1){	$DM_ROUTE=2;}
		
		}else if($DM_ROUTE==22){
			SetChoice02(" Think of Koujaku"," Think of Mink");
			WaitChoice02();
			
			if($SetChoiceSelect==0){		$DM_ROUTE=1;}
			else if($SetChoiceSelect==1){	$DM_ROUTE=3;}
		
		}else if($DM_ROUTE==23){
			SetChoice02(" Think of Koujaku"," Think of Clear");
			WaitChoice02();
			
			if($SetChoiceSelect==0){		$DM_ROUTE=1;}
			else if($SetChoiceSelect==1){	$DM_ROUTE=4;}
		
		}else if($DM_ROUTE==24){
			SetChoice02(" Think of Noiz"," Think of Mink");
			WaitChoice02();
			
			if($SetChoiceSelect==0){		$DM_ROUTE=2;}
			else if($SetChoiceSelect==1){	$DM_ROUTE=3;}
		
		}else if($DM_ROUTE==25){
			SetChoice02(" Think of Noiz"," Think of Clear");
			WaitChoice02();
			
			if($SetChoiceSelect==0){		$DM_ROUTE=2;}
			else if($SetChoiceSelect==1){	$DM_ROUTE=4;}
		
		}else if($DM_ROUTE==26){
			SetChoice02(" Think of Mink"," Think of Clear");
			WaitChoice02();
			
			if($SetChoiceSelect==0){		$DM_ROUTE=3;}
			else if($SetChoiceSelect==1){	$DM_ROUTE=4;}
		
		}
	
	}else{
		CreateText("絵tt01", 25001, 280,410, 200, 50, "分岐失敗(<VALUE name=$DM_ROUTE>)");WaitKey();
	}

	if($DM_ROUTE==1){	$GameName = "dm0841.nss";}
	else if($DM_ROUTE==2){$GameName = "dm0842.nss";}
	else if($DM_ROUTE==3){$GameName = "dm0843.nss";}
	else if($DM_ROUTE==4){$GameName = "dm0844.nss";}
	else {$GameName = "";$GameCircle=false;}

//	ClearFadeAll(1000, true);

}
