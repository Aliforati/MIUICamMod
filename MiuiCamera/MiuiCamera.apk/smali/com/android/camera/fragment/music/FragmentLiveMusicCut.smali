.class public Lcom/android/camera/fragment/music/FragmentLiveMusicCut;
.super Landroid/app/AlertDialog;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/music/FragmentLiveMusicCut$MusicCutListener;
    }
.end annotation


# static fields
.field public static final MUSIC_CUT_STATE_PAUSE:I = 0x3

.field public static final MUSIC_CUT_STATE_START:I = 0x2

.field public static final MUSIC_CUT_STATE_STOP:I = 0x1

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mCurrentMusic:Lcom/android/camera/fragment/music/LiveMusicInfo;

.field public mCurrentState:I

.field public mFrameAdapter:Lcom/android/camera/fragment/music/MusicFrameAdapter;

.field public mFrameRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public mFrameScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field public mLiveDuration:J

.field public mMusicCut:Lcom/android/camera/fragment/music/MusicCut;

.field public mMusicCutCancel:Landroid/widget/ImageView;

.field public mMusicCutListener:Lcom/android/camera/fragment/music/FragmentLiveMusicCut$MusicCutListener;

.field public mMusicCutPlay:Landroid/widget/ImageView;

.field public mMusicCutSave:Landroid/widget/ImageView;

.field public mMusicCutStartTime:J

.field public mMusicEditLayout:Landroid/widget/LinearLayout;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;J)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mMusicCutStartTime:J

    new-instance p1, Lcom/android/camera/fragment/music/FragmentLiveMusicCut$2;

    invoke-direct {p1, p0}, Lcom/android/camera/fragment/music/FragmentLiveMusicCut$2;-><init>(Lcom/android/camera/fragment/music/FragmentLiveMusicCut;)V

    iput-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mFrameScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    iput-wide p2, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mLiveDuration:J

    new-instance p1, Lcom/android/camera/fragment/music/MusicCut;

    invoke-direct {p1}, Lcom/android/camera/fragment/music/MusicCut;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mMusicCut:Lcom/android/camera/fragment/music/MusicCut;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p3, p3, p3}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    const/4 p3, -0x1

    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 p3, 0x51

    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {p1, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/fragment/music/FragmentLiveMusicCut;)Lcom/android/camera/fragment/music/MusicFrameAdapter;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mFrameAdapter:Lcom/android/camera/fragment/music/MusicFrameAdapter;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/camera/fragment/music/FragmentLiveMusicCut;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mCurrentState:I

    return p0
.end method

.method public static synthetic access$200(Lcom/android/camera/fragment/music/FragmentLiveMusicCut;)Lcom/android/camera/fragment/music/LiveMusicInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mCurrentMusic:Lcom/android/camera/fragment/music/LiveMusicInfo;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/camera/fragment/music/FragmentLiveMusicCut;)Lcom/android/camera/fragment/music/FragmentLiveMusicCut$MusicCutListener;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mMusicCutListener:Lcom/android/camera/fragment/music/FragmentLiveMusicCut$MusicCutListener;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/camera/fragment/music/FragmentLiveMusicCut;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mMusicCutStartTime:J

    return-wide v0
.end method

.method public static synthetic access$402(Lcom/android/camera/fragment/music/FragmentLiveMusicCut;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mMusicCutStartTime:J

    return-wide p1
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    invoke-super {p0}, Landroid/app/AlertDialog;->dismiss()V

    sget-object v0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->TAG:Ljava/lang/String;

    const-string v1, "dismiss"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mMusicCutListener:Lcom/android/camera/fragment/music/FragmentLiveMusicCut$MusicCutListener;

    iget-object v1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mCurrentMusic:Lcom/android/camera/fragment/music/LiveMusicInfo;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/camera/fragment/music/FragmentLiveMusicCut$MusicCutListener;->startPlayOrStopMusicByTime(Lcom/android/camera/fragment/music/LiveMusicInfo;I)V

    return-void
.end method

.method public getCurrentState()I
    .locals 1

    iget v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mCurrentState:I

    return v0
.end method

.method public initView()V
    .locals 3

    const v0, 0x7f0901cf

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mMusicEditLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0901da

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mFrameRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0901ad

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mMusicCutPlay:Landroid/widget/ImageView;

    const v0, 0x7f090276

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mMusicCutCancel:Landroid/widget/ImageView;

    const v0, 0x7f090277

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mMusicCutSave:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mMusicCutPlay:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mMusicCutCancel:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mMusicCutSave:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut$1;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, v2}, Lcom/android/camera/fragment/music/FragmentLiveMusicCut$1;-><init>(Lcom/android/camera/fragment/music/FragmentLiveMusicCut;Landroid/content/Context;IZ)V

    new-instance v1, Lcom/android/camera/fragment/music/MusicFrameAdapter;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/camera/fragment/music/MusicFrameAdapter;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    iput-object v1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mFrameAdapter:Lcom/android/camera/fragment/music/MusicFrameAdapter;

    iget-object v1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mFrameRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mFrameRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mFrameScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mFrameRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mFrameRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mFrameAdapter:Lcom/android/camera/fragment/music/MusicFrameAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public musicCut(Lcom/android/camera/fragment/music/LiveMusicInfo;JJ)Lcom/android/camera/fragment/music/LiveMusicInfo;
    .locals 9

    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/android/camera/fragment/music/LiveMusicInfo;->mPlayUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/module/impl/component/FileUtils;->MUSIC_CUT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "LIVE_MUSIC_CUT.mp3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x15f90

    :try_start_0
    div-long/2addr v1, p4

    long-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mMusicCut:Lcom/android/camera/fragment/music/MusicCut;

    invoke-virtual {v2, v1}, Lcom/android/camera/fragment/music/MusicCut;->setLoopNum(I)V

    iget-object v2, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mMusicCut:Lcom/android/camera/fragment/music/MusicCut;

    iget-object v3, p1, Lcom/android/camera/fragment/music/LiveMusicInfo;->mPlayUrl:Ljava/lang/String;

    add-long v7, p2, p4

    move-object v4, v0

    move-wide v5, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/camera/fragment/music/MusicCut;->clipMp3(Ljava/lang/String;Ljava/lang/String;JJ)Z

    move-result p2

    if-eqz p2, :cond_1

    iput-object v0, p1, Lcom/android/camera/fragment/music/LiveMusicInfo;->mPlayUrl:Ljava/lang/String;

    int-to-long p2, v1

    mul-long/2addr p2, p4

    iput-wide p2, p1, Lcom/android/camera/fragment/music/LiveMusicInfo;->mDuration:J

    invoke-static {p4, p5}, Lcom/android/camera/fragment/music/MusicUtils;->formatTime(J)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/camera/fragment/music/LiveMusicInfo;->mDurationText:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p2, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->TAG:Ljava/lang/String;

    const-string p3, "Music editing failed"

    invoke-static {p2, p3}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-object p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object v1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mCurrentMusic:Lcom/android/camera/fragment/music/LiveMusicInfo;

    iget-wide v2, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mMusicCutStartTime:J

    iget-wide v4, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mLiveDuration:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->musicCut(Lcom/android/camera/fragment/music/LiveMusicInfo;JJ)Lcom/android/camera/fragment/music/LiveMusicInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mMusicCutListener:Lcom/android/camera/fragment/music/FragmentLiveMusicCut$MusicCutListener;

    invoke-interface {v0, p1}, Lcom/android/camera/fragment/music/FragmentLiveMusicCut$MusicCutListener;->musicCutSuccess(Lcom/android/camera/fragment/music/LiveMusicInfo;)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->dismiss()V

    goto :goto_0

    :sswitch_2
    iget p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mCurrentState:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mMusicCutListener:Lcom/android/camera/fragment/music/FragmentLiveMusicCut$MusicCutListener;

    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mCurrentMusic:Lcom/android/camera/fragment/music/LiveMusicInfo;

    const/4 v1, 0x3

    invoke-interface {p1, v0, v1}, Lcom/android/camera/fragment/music/FragmentLiveMusicCut$MusicCutListener;->startPlayOrStopMusicByTime(Lcom/android/camera/fragment/music/LiveMusicInfo;I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mMusicCutListener:Lcom/android/camera/fragment/music/FragmentLiveMusicCut$MusicCutListener;

    iget-object v1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mCurrentMusic:Lcom/android/camera/fragment/music/LiveMusicInfo;

    invoke-interface {p1, v1, v0}, Lcom/android/camera/fragment/music/FragmentLiveMusicCut$MusicCutListener;->startPlayOrStopMusicByTime(Lcom/android/camera/fragment/music/LiveMusicInfo;I)V

    :cond_1
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0901ad -> :sswitch_2
        0x7f090276 -> :sswitch_1
        0x7f090277 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    sget-object p1, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->TAG:Ljava/lang/String;

    const-string v0, "onCreate"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f0c00c9

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->initView()V

    return-void
.end method

.method public onMusicCutStartOrStopPlay(Z)V
    .locals 3

    sget-object v0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMusicCutStartOrStopPlay isPlaying="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mMusicCutPlay:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mMusicCutPlay:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method public selectMusicCut(Lcom/android/camera/fragment/music/LiveMusicInfo;Z)V
    .locals 5

    sget-object v0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "selectMusicCut music= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/camera/fragment/music/LiveMusicInfo;->mPlayUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    iput-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mCurrentMusic:Lcom/android/camera/fragment/music/LiveMusicInfo;

    iget-wide v0, p1, Lcom/android/camera/fragment/music/LiveMusicInfo;->mDuration:J

    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mMusicEditLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mFrameAdapter:Lcom/android/camera/fragment/music/MusicFrameAdapter;

    long-to-float v0, v0

    iget-wide v3, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mLiveDuration:J

    long-to-float v1, v3

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/music/MusicFrameAdapter;->setRatio(F)V

    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mFrameRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mFrameRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mMusicCutListener:Lcom/android/camera/fragment/music/FragmentLiveMusicCut$MusicCutListener;

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mCurrentMusic:Lcom/android/camera/fragment/music/LiveMusicInfo;

    const-wide/16 v0, 0x0

    invoke-interface {p1, p2, v0, v1}, Lcom/android/camera/fragment/music/FragmentLiveMusicCut$MusicCutListener;->selectMusicPlayStartTime(Lcom/android/camera/fragment/music/LiveMusicInfo;J)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mCurrentMusic:Lcom/android/camera/fragment/music/LiveMusicInfo;

    const/4 v0, 0x2

    invoke-interface {p1, p2, v0}, Lcom/android/camera/fragment/music/FragmentLiveMusicCut$MusicCutListener;->startPlayOrStopMusicByTime(Lcom/android/camera/fragment/music/LiveMusicInfo;I)V

    :goto_0
    return-void
.end method

.method public setCurrentState(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mCurrentState:I

    return-void
.end method

.method public setMusicCutCallback(Lcom/android/camera/fragment/music/FragmentLiveMusicCut$MusicCutListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mMusicCutListener:Lcom/android/camera/fragment/music/FragmentLiveMusicCut$MusicCutListener;

    return-void
.end method
