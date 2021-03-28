.class public Lcom/android/camera/Display;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final DISPLAY_RATIO_123:Ljava/lang/String; = "4:3"

.field public static final DISPLAY_RATIO_169:Ljava/lang/String; = "16:9"

.field public static final DISPLAY_RATIO_456:Ljava/lang/String; = "3:1"

.field public static final DISPLAY_RATIO_MULTI_WINDOW:Ljava/lang/String; = "MW"

.field public static final DISPLAY_TYPE_MULTI_FOLDER:I = 0x2

.field public static final DISPLAY_TYPE_MULTI_NORMAL:I = 0x1

.field public static final DISPLAY_TYPE_SINGLE:I = 0x0

.field public static final MIUI_MULTI_DMS_NAME:Ljava/lang/String; = "miui_multi_display"

.field public static SUB_SCREEN_DISPLAY_NUM:I = 0x1

.field public static final TAG:Ljava/lang/String; = "Display"

.field public static isNotchDevice:Z = false

.field public static mDisplayRectCompat:Lcom/android/camera/IDisplayRect; = null

.field public static mIsInMultiWindowMode:Z = false

.field public static mIsInitialized:Z = false

.field public static sAppBoundHeight:I = 0x438

.field public static sAppBoundWidth:I = 0x2d0

.field public static sDisplayHeight:I = 0x438

.field public static sDisplayWidth:I = 0x2d0

.field public static sHasNavigationBar:Z = false

.field public static sIsFullScreenNavBarHidden:Z = false

.field public static sIsnotchScreenHidden:Z = false

.field public static sNavigationBarHeight:I = 0x0

.field public static sPixelDensity:F = 1.0f

.field public static sPixelDensityScale:F = 1.0f

.field public static sScreenOriention:I

.field public static sStatusBarHeight:I

.field public static sWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Display;->init(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkDeviceHasNavigationBar(Landroid/content/Context;)Z
    .locals 1

    sget-object v0, Lcom/android/camera/Display;->sWindowManager:Landroid/view/IWindowManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    sput-object v0, Lcom/android/camera/Display;->sWindowManager:Landroid/view/IWindowManager;

    :try_start_0
    invoke-static {p0, v0}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->hasNavigationBar(Landroid/content/Context;Landroid/view/IWindowManager;)Z

    move-result p0

    sput-boolean p0, Lcom/android/camera/Display;->sHasNavigationBar:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Lcom/android/camera/Display;->TAG:Ljava/lang/String;

    const-string v0, "checkDeviceHasNavigationBar exception"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    sget-boolean p0, Lcom/android/camera/Display;->sHasNavigationBar:Z

    return p0
.end method

.method public static closePresentationDisplay()V
    .locals 3

    sget-object v0, Lcom/android/camera/Display;->TAG:Ljava/lang/String;

    const-string v1, "E: closeSubDisplay"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "miui_multi_display"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/camera/module/impl/component/IMiuiMultiDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/camera/module/impl/component/IMiuiMultiDisplayManager;

    move-result-object v0

    :try_start_0
    sget v1, Lcom/android/camera/Display;->SUB_SCREEN_DISPLAY_NUM:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/camera/module/impl/component/IMiuiMultiDisplayManager;->setDisplayStateIgnoreFold(IZ)Z

    sget-object v0, Lcom/android/camera/Display;->TAG:Ljava/lang/String;

    const-string v1, "X: closeSubDisplay, multi display manager service Success!"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    sget-object v0, Lcom/android/camera/Display;->TAG:Ljava/lang/String;

    const-string v1, "open cover display manager service connect fail!"

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/camera/Display;->TAG:Ljava/lang/String;

    const-string v1, "multi display manager service no found! "

    :goto_0
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public static fitDisplayFat()Z
    .locals 2

    invoke-static {}, Lcom/android/camera/Display;->getDisplayRatio()Ljava/lang/String;

    move-result-object v0

    const-string v1, "4:3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static fitDisplayThin()Z
    .locals 2

    invoke-static {}, Lcom/android/camera/Display;->getDisplayRatio()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3:1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/Display;->getDisplayRatio()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static getAppBoundHeight()I
    .locals 1

    sget v0, Lcom/android/camera/Display;->sAppBoundHeight:I

    return v0
.end method

.method public static getAppBoundWidth()I
    .locals 1

    sget v0, Lcom/android/camera/Display;->sAppBoundWidth:I

    return v0
.end method

.method public static getBottomBarHeight()I
    .locals 1

    invoke-static {}, Lcom/android/camera/Display;->getDisplayAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/IDisplayRect;->getBottomBarHeight()I

    move-result v0

    return v0
.end method

.method public static getBottomHeight()I
    .locals 1

    invoke-static {}, Lcom/android/camera/Display;->getDisplayAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/IDisplayRect;->getBottomHeight()I

    move-result v0

    return v0
.end method

.method public static getBottomMargin()I
    .locals 1

    invoke-static {}, Lcom/android/camera/Display;->getDisplayAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/IDisplayRect;->getBottomMargin()I

    move-result v0

    return v0
.end method

.method public static getCenterDisplayHeight()I
    .locals 1

    invoke-static {}, Lcom/android/camera/Display;->getDisplayAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/IDisplayRect;->getCenterDisplayHeight()I

    move-result v0

    return v0
.end method

.method public static getCenterDisplayWidth()I
    .locals 1

    invoke-static {}, Lcom/android/camera/Display;->getDisplayAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/IDisplayRect;->getCenterDisplayWidth()I

    move-result v0

    return v0
.end method

.method public static getDisplayAdapter()Lcom/android/camera/IDisplayRect;
    .locals 1

    sget-object v0, Lcom/android/camera/Display;->mDisplayRectCompat:Lcom/android/camera/IDisplayRect;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Display;->init(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/android/camera/Display;->mDisplayRectCompat:Lcom/android/camera/IDisplayRect;

    return-object v0
.end method

.method public static getDisplayFoldState()Z
    .locals 2

    const-string v0, "miui_multi_display"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/camera/module/impl/component/IMiuiMultiDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/camera/module/impl/component/IMiuiMultiDisplayManager;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Lcom/android/camera/module/impl/component/IMiuiMultiDisplayManager;->getCurrentFoldState()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    sget-object v0, Lcom/android/camera/Display;->TAG:Ljava/lang/String;

    const-string v1, "getCurrentFoldState fail!"

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/camera/Display;->TAG:Ljava/lang/String;

    const-string v1, "multi display manager service no found! "

    :goto_0
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public static getDisplayHeight()I
    .locals 1

    sget v0, Lcom/android/camera/Display;->sDisplayHeight:I

    return v0
.end method

.method public static getDisplayRatio()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/android/camera/Display;->getDisplayAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/IDisplayRect;->getDisplayRatio()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayRect(I)Landroid/graphics/Rect;
    .locals 1

    invoke-static {}, Lcom/android/camera/Display;->getDisplayAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/camera/IDisplayRect;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static getDisplayWidth()I
    .locals 1

    sget v0, Lcom/android/camera/Display;->sDisplayWidth:I

    return v0
.end method

.method public static getDragDistanceFix()I
    .locals 1

    invoke-static {}, Lcom/android/camera/Display;->getDisplayAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/IDisplayRect;->getDragDistanceFix()I

    move-result v0

    return v0
.end method

.method public static getDragLayoutTopMargin()I
    .locals 1

    invoke-static {}, Lcom/android/camera/Display;->getDisplayAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/IDisplayRect;->getDragLayoutTopMargin()I

    move-result v0

    return v0
.end method

.method public static getGestureLineHeight(Landroid/content/Context;)I
    .locals 1

    invoke-static {p0}, Lcom/android/camera/Display;->isEnableGestureLine(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Lcom/android/camera/Display;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static getMarginEnd()I
    .locals 1

    invoke-static {}, Lcom/android/camera/Display;->getDisplayAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/IDisplayRect;->getMarginEnd()I

    move-result v0

    return v0
.end method

.method public static getMarginStart()I
    .locals 1

    invoke-static {}, Lcom/android/camera/Display;->getDisplayAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/IDisplayRect;->getMarginStart()I

    move-result v0

    return v0
.end method

.method public static getMaxViewFinderRect()Landroid/graphics/Rect;
    .locals 1

    invoke-static {}, Lcom/android/camera/Display;->getDisplayAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/IDisplayRect;->getMaxViewFinderRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static getMoreModePrefVideo(Z)[I
    .locals 1

    invoke-static {}, Lcom/android/camera/Display;->getDisplayAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/camera/IDisplayRect;->getMoreModePrefVideo(Z)[I

    move-result-object p0

    return-object p0
.end method

.method public static getMoreModeTabCol(ZZ)I
    .locals 1

    invoke-static {}, Lcom/android/camera/Display;->getDisplayAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/android/camera/IDisplayRect;->getMoreModeTabCol(ZZ)I

    move-result p0

    return p0
.end method

.method public static getMoreModeTabMarginVer(IZ)I
    .locals 1

    invoke-static {}, Lcom/android/camera/Display;->getDisplayAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/android/camera/IDisplayRect;->getMoreModeTabMarginVer(IZ)I

    move-result p0

    return p0
.end method

.method public static getMoreModeTabRow(IZ)I
    .locals 1

    invoke-static {}, Lcom/android/camera/Display;->getDisplayAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/android/camera/IDisplayRect;->getMoreModeTabRow(IZ)I

    move-result p0

    return p0
.end method

.method public static getMuiltDisplayType()I
    .locals 2

    const-string v0, "persist.sys.muiltdisplay_type"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getNavigationBarHeight()I
    .locals 1

    sget v0, Lcom/android/camera/Display;->sNavigationBarHeight:I

    return v0
.end method

.method public static getNavigationBarHeight(Landroid/content/Context;)I
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "navigation_bar_height"

    const-string v1, "dimen"

    const-string v2, "android"

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sget-object v0, Lcom/android/camera/Display;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "navBarHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public static getPixelDensity()F
    .locals 1

    sget v0, Lcom/android/camera/Display;->sPixelDensity:F

    return v0
.end method

.method public static getScreenOrientation()I
    .locals 1

    sget v0, Lcom/android/camera/Display;->sScreenOriention:I

    return v0
.end method

.method public static getScreenOrientation(I)I
    .locals 1

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10e

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x2

    return p0
.end method

.method public static getSquareBottomCoverHeight()I
    .locals 1

    invoke-static {}, Lcom/android/camera/Display;->getDisplayAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/IDisplayRect;->getSquareBottomCoverHeight()I

    move-result v0

    return v0
.end method

.method public static getStatusBarHeight()I
    .locals 1

    sget v0, Lcom/android/camera/Display;->sStatusBarHeight:I

    return v0
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .locals 4

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o0O00O()LOooO0O0/OooO0o0/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o00000OO()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070147

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_1
    sget-object v0, Lcom/android/camera/Display;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StatusBarHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public static getTipsMarginTop()I
    .locals 1

    invoke-static {}, Lcom/android/camera/Display;->getDisplayAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/IDisplayRect;->getTipsMarginTop()I

    move-result v0

    return v0
.end method

.method public static getTopBarHeight()I
    .locals 1

    invoke-static {}, Lcom/android/camera/Display;->getDisplayAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/IDisplayRect;->getTopBarHeight()I

    move-result v0

    return v0
.end method

.method public static getTopBarWidth()I
    .locals 1

    invoke-static {}, Lcom/android/camera/Display;->getDisplayAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/IDisplayRect;->getTopBarWidth()I

    move-result v0

    return v0
.end method

.method public static getTopCoverHeight()I
    .locals 1

    invoke-static {}, Lcom/android/camera/Display;->getDisplayAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/IDisplayRect;->getTopCoverHeight()I

    move-result v0

    return v0
.end method

.method public static getTopHeight()I
    .locals 2

    invoke-static {}, Lcom/android/camera/Display;->getDisplayAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/IDisplayRect;->getTopMargin()I

    move-result v0

    invoke-static {}, Lcom/android/camera/Display;->getDisplayAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/IDisplayRect;->getTopBarHeight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static getTopMargin()I
    .locals 1

    invoke-static {}, Lcom/android/camera/Display;->getDisplayAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/IDisplayRect;->getTopMargin()I

    move-result v0

    return v0
.end method

.method public static getWindowManager()Landroid/view/IWindowManager;
    .locals 1

    sget-object v0, Lcom/android/camera/Display;->sWindowManager:Landroid/view/IWindowManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    sput-object v0, Lcom/android/camera/Display;->sWindowManager:Landroid/view/IWindowManager;

    :cond_0
    sget-object v0, Lcom/android/camera/Display;->sWindowManager:Landroid/view/IWindowManager;

    return-object v0
.end method

.method public static getsPixelDensityScale()F
    .locals 1

    sget v0, Lcom/android/camera/Display;->sPixelDensityScale:F

    return v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/camera/Display;->init(Landroid/content/Context;Z)V

    return-void
.end method

.method public static init(Landroid/content/Context;Z)V
    .locals 6

    if-nez p0, :cond_0

    sget-object p0, Lcom/android/camera/Display;->TAG:Ljava/lang/String;

    const-string p1, "initialize: context is null"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sput-boolean p1, Lcom/android/camera/Display;->mIsInMultiWindowMode:Z

    invoke-static {p0}, Lcom/android/camera/Display;->isNotchScreenHidden(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/Display;->sIsnotchScreenHidden:Z

    const/4 v0, 0x0

    const-string/jumbo v1, "ro.miui.notch"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    sget-boolean v1, Lcom/android/camera/Display;->sIsnotchScreenHidden:Z

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    sput-boolean v1, Lcom/android/camera/Display;->isNotchDevice:Z

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "laurel_sprout"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/android/camera/Display;->sIsnotchScreenHidden:Z

    xor-int/2addr v1, v2

    sput-boolean v1, Lcom/android/camera/Display;->isNotchDevice:Z

    :cond_2
    invoke-static {p0}, Lcom/android/camera/Display;->isFullScreenNavBarHidden(Landroid/content/Context;)Z

    move-result v1

    sput-boolean v1, Lcom/android/camera/Display;->sIsFullScreenNavBarHidden:Z

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const-string/jumbo v3, "window"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    sput v4, Lcom/android/camera/Display;->sPixelDensity:F

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v3, v4, Landroid/graphics/Point;->x:I

    iget v5, v4, Landroid/graphics/Point;->y:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    sput v3, Lcom/android/camera/Display;->sAppBoundWidth:I

    sput v3, Lcom/android/camera/Display;->sDisplayWidth:I

    iget v3, v4, Landroid/graphics/Point;->x:I

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    sput v3, Lcom/android/camera/Display;->sAppBoundHeight:I

    sput v3, Lcom/android/camera/Display;->sDisplayHeight:I

    if-eqz p1, :cond_3

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt p1, v3, :cond_3

    const/16 p1, 0x33a

    sput p1, Lcom/android/camera/Display;->sAppBoundWidth:I

    const/16 p1, 0x9b0

    sput p1, Lcom/android/camera/Display;->sAppBoundHeight:I

    :cond_3
    sget-object p1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "hercules"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/16 p1, 0x8c4

    sput p1, Lcom/android/camera/Display;->sDisplayHeight:I

    :cond_4
    iget p1, v1, Landroid/util/DisplayMetrics;->density:F

    sput p1, Lcom/android/camera/Display;->sPixelDensity:F

    iget p1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    sget v1, Lcom/android/camera/Display;->sPixelDensity:F

    div-float/2addr p1, v1

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr p1, v1

    sput p1, Lcom/android/camera/Display;->sPixelDensityScale:F

    sput-boolean v2, Lcom/android/camera/Display;->mIsInitialized:Z

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/Display;->initDisplayCompat(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/camera/Display;->getBottomHeight()I

    move-result p0

    sput p0, Lcom/android/camera/CameraSettings;->BOTTOM_CONTROL_HEIGHT:I

    sget-object p0, Lcom/android/camera/Display;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initialize: sCenterDisplayHeight = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/camera/Display;->getCenterDisplayHeight()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sTopMargin = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/camera/Display;->getTopMargin()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sTopBarHeight = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/camera/Display;->getTopBarHeight()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sBottomMargin = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/camera/Display;->getBottomMargin()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sBottomBarHeight = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/camera/Display;->getBottomBarHeight()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", windowSize = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/camera/Display;->getDisplayWidth()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/camera/Display;->getDisplayHeight()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", appBoundSize = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundWidth()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundHeight()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isNotchDevice = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/camera/Display;->isNotchDevice:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsInitialized = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/camera/Display;->mIsInitialized:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/camera/Display;->TAG:Ljava/lang/String;

    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x2

    sget v2, Lcom/android/camera/Display;->sPixelDensity:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v0

    const-string/jumbo v0, "windowSize=%dx%d density=%.4f"

    invoke-static {p1, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static initDisplayCompat(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/android/camera/DisplayAdapter$DisplayParameter;

    invoke-direct {v0}, Lcom/android/camera/DisplayAdapter$DisplayParameter;-><init>()V

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundHeight()I

    move-result v1

    iput v1, v0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundHeight:I

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundWidth()I

    move-result v1

    iput v1, v0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundWidth:I

    invoke-static {}, Lcom/android/camera/Display;->isNotchDevice()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->isNotchDevice:Z

    invoke-static {p0}, Lcom/android/camera/Display;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->statusBarHeight:I

    sget-boolean v1, Lcom/android/camera/Display;->mIsInMultiWindowMode:Z

    iput-boolean v1, v0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->isInMultiWindow:Z

    new-instance v1, Lcom/android/camera/DisplayAdapter;

    invoke-direct {v1, p0, v0}, Lcom/android/camera/DisplayAdapter;-><init>(Landroid/content/Context;Lcom/android/camera/DisplayAdapter$DisplayParameter;)V

    sput-object v1, Lcom/android/camera/Display;->mDisplayRectCompat:Lcom/android/camera/IDisplayRect;

    return-void
.end method

.method public static initStatusBarHeight(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/android/camera/Display;->checkDeviceHasNavigationBar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/camera/Display;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput v0, Lcom/android/camera/Display;->sNavigationBarHeight:I

    invoke-static {p0}, Lcom/android/camera/Display;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p0

    sput p0, Lcom/android/camera/Display;->sStatusBarHeight:I

    return-void
.end method

.method public static isContentViewExtendToTopEdges()Z
    .locals 1

    sget-boolean v0, Lcom/android/camera/Display;->isNotchDevice:Z

    return v0
.end method

.method public static isEnableGestureLine(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "hide_gesture_line"

    invoke-static {p0, v0}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    sget-boolean p0, Lcom/android/camera/Display;->sHasNavigationBar:Z

    const/4 v0, 0x0

    return v0
.end method

.method public static isFoldDisplayType()Z
    .locals 2

    invoke-static {}, Lcom/android/camera/Display;->getMuiltDisplayType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isFullScreenNavBarHidden()Z
    .locals 1

    sget-boolean v0, Lcom/android/camera/Display;->sIsFullScreenNavBarHidden:Z

    return v0
.end method

.method public static isFullScreenNavBarHidden(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "force_fsg_nav_bar"

    invoke-static {p0, v0}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isInMultiWindowMode()Z
    .locals 1

    sget-boolean v0, Lcom/android/camera/Display;->mIsInMultiWindowMode:Z

    return v0
.end method

.method public static isLandscape()Z
    .locals 2

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o0O00O()LOooO0O0/OooO0o0/OooO00o/OooO0O0;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/Display;->getDisplayRatio()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->OooO0O0(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/Display;->getScreenOrientation()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isNotchDevice()Z
    .locals 2

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o0O00O()LOooO0O0/OooO0o0/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o00O()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/Display;->getDisplayWidth()I

    move-result v0

    invoke-static {}, Lcom/android/camera/Display;->getDisplayHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->isAspectRatio456(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    sget-boolean v0, Lcom/android/camera/Display;->isNotchDevice:Z

    return v0
.end method

.method public static isNotchScreenHidden()Z
    .locals 1

    sget-boolean v0, Lcom/android/camera/Display;->sIsnotchScreenHidden:Z

    return v0
.end method

.method public static isNotchScreenHidden(Landroid/content/Context;)Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "force_black_v2"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public static needAlphaAnimation4PopMore()Z
    .locals 1

    invoke-static {}, Lcom/android/camera/Display;->getDisplayAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/IDisplayRect;->needAlphaAnimation4PopMore()Z

    move-result v0

    return v0
.end method

.method public static openPresentationDisplay()V
    .locals 3

    sget-object v0, Lcom/android/camera/Display;->TAG:Ljava/lang/String;

    const-string v1, "E: openSubDisplay"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "miui_multi_display"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/camera/module/impl/component/IMiuiMultiDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/camera/module/impl/component/IMiuiMultiDisplayManager;

    move-result-object v0

    :try_start_0
    sget v1, Lcom/android/camera/Display;->SUB_SCREEN_DISPLAY_NUM:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/camera/module/impl/component/IMiuiMultiDisplayManager;->setDisplayStateIgnoreFold(IZ)Z

    sget-object v0, Lcom/android/camera/Display;->TAG:Ljava/lang/String;

    const-string v1, "X: openSubDisplay, open sub display sucess!"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    sget-object v0, Lcom/android/camera/Display;->TAG:Ljava/lang/String;

    const-string v1, "open cover display manager service connect fail!"

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/camera/Display;->TAG:Ljava/lang/String;

    const-string v1, "multi display manager service no found! "

    :goto_0
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public static reverseDisplayStateWhileUnFold(Z)V
    .locals 3

    sget-object v0, Lcom/android/camera/Display;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "E: reverseDisplayStateWhileUnFold:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "miui_multi_display"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/camera/module/impl/component/IMiuiMultiDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/camera/module/impl/component/IMiuiMultiDisplayManager;

    move-result-object v0

    const/4 v1, 0x1

    :try_start_0
    invoke-interface {v0, p0, v1}, Lcom/android/camera/module/impl/component/IMiuiMultiDisplayManager;->reverseDisplayStateWhileUnFold(ZI)Z

    sget-object p0, Lcom/android/camera/Display;->TAG:Ljava/lang/String;

    const-string v0, "X: reverseDisplayStateWhileUnFold Success!"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    sget-object p0, Lcom/android/camera/Display;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "reverseDisplayStateWhileUnFold fail!"

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/camera/Display;->TAG:Ljava/lang/String;

    const-string v0, "multi display manager service no found! "

    :goto_0
    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public static supportMultiWindow()Z
    .locals 2

    invoke-static {}, Lcom/android/camera/Display;->getDisplayWidth()I

    move-result v0

    invoke-static {}, Lcom/android/camera/Display;->getDisplayHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->isAspectRatio123(II)Z

    move-result v0

    return v0
.end method

.method public static updateOrientation(I)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/Display;->getScreenOrientation(I)I

    move-result p0

    sput p0, Lcom/android/camera/Display;->sScreenOriention:I

    return-void
.end method
