.class public Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;
.implements Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance$EmoticonPackListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$MimojiEncoderListener;
    }
.end annotation


# static fields
.field public static final FLAG_HAS_FACE:I = 0xa

.field public static final FLAG_INIT_FACE:I = 0x0

.field public static final START_OFFSET_MS:J = 0x1c2L

.field public static final TAG:Ljava/lang/String; = "Mimojifu"

.field public static mIsShowAvatarLoading:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field public NVFormat:I

.field public cameraItem:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

.field public currentPos:I

.field public currentScenePath:[Ljava/lang/String;

.field public defaultItem:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

.field public dynamicCameraItem:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

.field public executorService:Ljava/util/concurrent/ExecutorService;

.field public fboUtils:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;

.field public flipX:I

.field public flipY:I

.field public fuScene:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuScene;

.field public gifUtil:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/GifUtil;

.field public isSaveEmoticon:Z

.field public isloadEmoticon:Z

.field public mActivityBase:Lcom/android/camera/ActivityBase;

.field public final mAvatarLock:Ljava/lang/Object;

.field public volatile mCameraNV21Byte:[B

.field public mCameraView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

.field public mCaptureHandler:Landroid/os/Handler;

.field public mCaptureThread:Landroid/os/HandlerThread;

.field public mContext:Landroid/content/Context;

.field public mCountDownTimer:Landroid/os/CountDownTimer;

.field public mCountEmotGif:Ljava/util/concurrent/atomic/AtomicInteger;

.field public mDrawSize:Landroid/util/Size;

.field public mExtTexAttribute:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

.field public mGifBitmap:Landroid/graphics/Bitmap;

.field public mIsAr:Z

.field public mIsCreate:Z

.field public mIsCreateAvatarShutterClick:Z

.field public mIsEmoticon:Z

.field public mIsFaceDetectSuccess:Z

.field public mIsFrontCamera:Z

.field public mIsGifOn:Z

.field public mIsLoadFinish:Z

.field public mIsMimojiFuCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mIsMimojiNeedDeleteSkip:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mIsMimojiNeedUpdateSkip:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mIsMimojiReseting:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mIsNeedCapture:Z

.field public mIsNeedTakePicIcon:Z

.field public mIsRecordStopping:Z

.field public volatile mIsRecording:Z

.field public mLiveMediaRecorder:Lcom/android/camera/module/encoder/LiveMediaRecorder;

.field public mLoadHandler:Landroid/os/Handler;

.field public mLoadThread:Landroid/os/HandlerThread;

.field public mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

.field public mMaxVideoDurationInMs:I

.field public mMediaEncoderListener:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$MimojiEncoderListener;

.field public mMimoijTexAttribute:Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;

.field public mMimojiEditorControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

.field public mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

.field public mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

.field public mPreviewHeight:I

.field public mPreviewWidth:I

.field public mRealSelectedEmoInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mRecordingStartTime:J

.field public mRotationDevice:I

.field public mRotationFu:I

.field public mStopRecordType:I

.field public mTakeIconCallBack:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$TakePhotoCallBack;

.field public mTakePicIconIng:Z

.field public mTotalRecordingTime:J

.field public mUiHandler:Landroid/os/Handler;

.field public mtx:[F

.field public mvp:[F

.field public onCompleteListener:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager$OnCompleteListener;

.field public onEncoderPictureListener:Lcom/faceunity/pta_helper/pic/PictureEncoder$OnEncoderPictureListener;

.field public onRecordListener:Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper$OnRecordListener;

.field public rotateMode:I

.field public trans:[F

.field public transTemp:[F

.field public uiStyle:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsShowAvatarLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x5a

    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mRotationDevice:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mRotationFu:I

    const/16 v1, 0x10

    new-array v2, v1, [F

    iput-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->trans:[F

    new-array v2, v1, [F

    iput-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->transTemp:[F

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsMimojiFuCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsMimojiReseting:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsMimojiNeedDeleteSkip:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsMimojiNeedUpdateSkip:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsFaceDetectSuccess:Z

    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "LoadConfig"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mLoadThread:Landroid/os/HandlerThread;

    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "Capture"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mCaptureThread:Landroid/os/HandlerThread;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mAvatarLock:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsRecordStopping:Z

    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsNeedCapture:Z

    new-instance v2, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-direct {v2}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>()V

    iput-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mExtTexAttribute:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    new-instance v2, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;

    invoke-direct {v2}, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;-><init>()V

    iput-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimoijTexAttribute:Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;

    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsCreateAvatarShutterClick:Z

    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mTakePicIconIng:Z

    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsNeedTakePicIcon:Z

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mCountEmotGif:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->currentScenePath:[Ljava/lang/String;

    new-instance v2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    invoke-direct {v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;-><init>()V

    iput-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->cameraItem:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    new-instance v2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    invoke-direct {v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;-><init>()V

    iput-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->defaultItem:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    new-instance v2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    invoke-direct {v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;-><init>()V

    iput-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->dynamicCameraItem:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->NVFormat:I

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mtx:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mvp:[F

    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$6;

    invoke-direct {v0, p0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$6;-><init>(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->onRecordListener:Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper$OnRecordListener;

    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$7;

    invoke-direct {v0, p0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$7;-><init>(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->onEncoderPictureListener:Lcom/faceunity/pta_helper/pic/PictureEncoder$OnEncoderPictureListener;

    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$8;

    invoke-direct {v0, p0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$8;-><init>(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->onCompleteListener:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager$OnCompleteListener;

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mActivityBase:Lcom/android/camera/ActivityBase;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mCameraView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    invoke-static {}, Lcom/android/camera/CameraSettings;->isGifOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1388

    goto :goto_0

    :cond_0
    const/16 v0, 0x3a98

    :goto_0
    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMaxVideoDurationInMs:I

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraAppImpl()Lcom/android/camera/CameraAppImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa6

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xf7

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiEditorControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMediaEncoderListener:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$MimojiEncoderListener;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$MimojiEncoderListener;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mActivityBase:Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/BaseModule;

    invoke-direct {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$MimojiEncoderListener;-><init>(Lcom/android/camera/module/BaseModule;)V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMediaEncoderListener:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$MimojiEncoderListener;

    :cond_1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mLoadThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mLoadThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mLoadHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mCaptureThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mCaptureThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mCaptureHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mUiHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static synthetic OooO00o(Ljava/lang/String;[BLio/reactivex/SingleEmitter;)V
    .locals 1

    invoke-static {p0}, Lcom/android/camera/module/impl/component/FileUtils;->makeNoMediaDir(Ljava/lang/String;)Z

    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;->getInstance()Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;->create(Ljava/lang/String;[BLcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BasePTAResDB;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p2, p0}, Lio/reactivex/SingleEmitter;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/Throwable;

    const-string p1, "error"

    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lio/reactivex/SingleEmitter;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static synthetic OooO00o(ZLcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiBottomList;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mimojifu showLoadProgress : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mimojifu"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1, p0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiBottomList;->firstProgressShow(Z)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiEditorControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mCountEmotGif:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;)Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiEditorControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    return-object p1
.end method

.method public static synthetic access$1102(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mTakePicIconIng:Z

    return p1
.end method

.method public static synthetic access$1200(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$TakePhotoCallBack;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mTakeIconCallBack:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$TakePhotoCallBack;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsEmoticon:Z

    return p0
.end method

.method public static synthetic access$1402(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsEmoticon:Z

    return p1
.end method

.method public static synthetic access$1500(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->isloadEmoticon:Z

    return p0
.end method

.method public static synthetic access$1502(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->isloadEmoticon:Z

    return p1
.end method

.method public static synthetic access$1600(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)Lcom/android/camera/ui/V6CameraGLSurfaceView;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mCameraView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    return-object p0
.end method

.method public static synthetic access$1700()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsShowAvatarLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static synthetic access$1800(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsMimojiNeedUpdateSkip:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic access$1900(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->onProfileFinish()V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsMimojiNeedDeleteSkip:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic access$2000(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mUiHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$2100(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsAr:Z

    return p0
.end method

.method public static synthetic access$2102(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsAr:Z

    return p1
.end method

.method public static synthetic access$302(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mTotalRecordingTime:J

    return-wide p1
.end method

.method public static synthetic access$400(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMaxVideoDurationInMs:I

    return p0
.end method

.method public static synthetic access$500(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)Lcom/android/camera/ActivityBase;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mActivityBase:Lcom/android/camera/ActivityBase;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mStopRecordType:I

    return p0
.end method

.method public static synthetic access$700(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsCreate:Z

    return p0
.end method

.method public static synthetic access$702(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsCreate:Z

    return p1
.end method

.method public static synthetic access$800(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    return-object p0
.end method

.method private animateCapture()V
    .locals 2

    invoke-static {}, Lcom/android/camera/CameraSettings;->isCameraSoundOpen()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mActivityBase:Lcom/android/camera/ActivityBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ActivityBase;->playCameraSound(I)V

    return-void
.end method

.method private clearAvatar()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsLoadFinish:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsMimojiNeedDeleteSkip:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    const-string v1, "Mimojifu"

    const-string v2, "clearAvatar view"

    invoke-static {v1, v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    new-instance v2, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$3;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$3;-><init>(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->queueEvent(Ljava/lang/Runnable;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;
    .locals 1

    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

    invoke-direct {v0, p0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;-><init>(Lcom/android/camera/ActivityBase;)V

    return-object v0
.end method

.method private createAvatar([B)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsCreateAvatarShutterClick:Z

    sget-object v0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->CREATE_MODLE_CACHE_DIR:Ljava/lang/String;

    new-instance v1, LOooO0O0/OooO0OO/OooO00o/OooOo00/OooO0O0/OooO0OO/OooO0O0/OooO0OO;

    invoke-direct {v1, v0, p1}, LOooO0O0/OooO0OO/OooO00o/OooOo00/OooO0O0/OooO0OO/OooO0O0/OooO0OO;-><init>(Ljava/lang/String;[B)V

    invoke-static {v1}, Lio/reactivex/Single;->create(Lio/reactivex/SingleOnSubscribe;)Lio/reactivex/Single;

    move-result-object p1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v1, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$5;

    invoke-direct {v1, p0, v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$5;-><init>(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/SingleObserver;)V

    return-void
.end method

.method private dealCaptureData([BLandroid/graphics/Rect;)I
    .locals 18

    move-object/from16 v1, p0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    iget-boolean v0, v1, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsFrontCamera:Z

    const/16 v3, 0x5a

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/16 v11, 0x10e

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    iget v0, v1, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mRotationDevice:I

    if-eq v0, v3, :cond_1

    if-ne v0, v11, :cond_0

    goto :goto_0

    :cond_0
    iget v0, v1, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mRotationDevice:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_2

    invoke-virtual {v9, v4, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v9, v5, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    :cond_2
    :goto_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v0, v1, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mDrawSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v7

    iget-object v0, v1, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mDrawSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v8

    const/4 v10, 0x0

    move-object v4, v2

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    iget-boolean v0, v1, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsFrontCamera:Z

    if-eqz v0, :cond_3

    iget v0, v1, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mRotationDevice:I

    rem-int/lit16 v5, v0, 0xb4

    if-nez v5, :cond_3

    add-int/lit16 v0, v0, 0xb4

    rem-int/lit16 v0, v0, 0x168

    goto :goto_2

    :cond_3
    iget v0, v1, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mRotationDevice:I

    :goto_2
    iget-boolean v5, v1, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsCreateAvatarShutterClick:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_4

    iget-object v0, v1, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getDeviceOrientation()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->onCreateAvatarShutterClick(Landroid/graphics/Bitmap;I)V

    return v6

    :cond_4
    const/4 v5, 0x1

    :try_start_0
    iget-object v7, v1, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mActivityBase:Lcom/android/camera/ActivityBase;

    if-eqz v7, :cond_a

    invoke-static {v6}, Lcom/android/camera/CameraSettings;->getEncodingQuality(Z)Lcom/android/camera/EncodingQuality;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/camera/EncodingQuality;->toInteger(Z)I

    move-result v7

    invoke-static {v4, v7}, Lcom/android/camera/Util;->getBitmapData(Landroid/graphics/Bitmap;I)[B

    move-result-object v7

    iget-boolean v8, v1, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsFrontCamera:Z

    if-eqz v8, :cond_5

    move-object v8, v2

    goto :goto_3

    :cond_5
    move-object v8, v4

    :goto_3
    iget-boolean v9, v1, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsFrontCamera:Z

    const/4 v10, 0x0

    invoke-static {v10, v8, v0, v9}, Lcom/android/camera/Thumbnail;->createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;IZ)Lcom/android/camera/Thumbnail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Thumbnail;->startWaitingForUri()V

    iget-object v8, v1, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mActivityBase:Lcom/android/camera/ActivityBase;

    invoke-virtual {v8}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v8

    invoke-virtual {v8, v0, v5, v5}, Lcom/android/camera/ThumbnailUpdater;->setThumbnail(Lcom/android/camera/Thumbnail;ZZ)V

    iget-object v0, v1, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mActivityBase:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getActualCameraId()I

    move-result v0

    move v13, v0

    goto :goto_4

    :cond_6
    move v13, v6

    :goto_4
    new-instance v0, Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const/16 v16, -0x4

    const/16 v17, 0x0

    move-object v12, v0

    invoke-direct/range {v12 .. v17}, Lcom/xiaomi/camera/core/ParallelTaskData;-><init>(IJILjava/lang/String;)V

    invoke-virtual {v0, v7, v6}, Lcom/xiaomi/camera/core/ParallelTaskData;->fillJpegData([BI)V

    iget-boolean v7, v1, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsFrontCamera:Z

    if-eqz v7, :cond_7

    move v7, v5

    goto :goto_5

    :cond_7
    move v7, v6

    :goto_5
    iget v8, v1, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mRotationDevice:I

    invoke-static {v7, v8}, Lcom/android/camera/Util;->getJpegRotation(II)I

    move-result v7

    add-int/2addr v7, v11

    rem-int/lit16 v7, v7, 0x168

    new-instance v8, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    iget-object v9, v1, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mDrawSize:Landroid/util/Size;

    iget-object v12, v1, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mDrawSize:Landroid/util/Size;

    iget-object v13, v1, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mDrawSize:Landroid/util/Size;

    const/16 v14, 0x100

    invoke-direct {v8, v9, v12, v13, v14}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;-><init>(Landroid/util/Size;Landroid/util/Size;Landroid/util/Size;I)V

    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v9

    invoke-static {}, Lcom/android/camera/CameraSettings;->isDualCameraWaterMarkOpen()Z

    move-result v12

    invoke-virtual {v8, v12}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setHasDualWaterMark(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setJpegRotation(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v7

    invoke-static {v6}, Lcom/android/camera/CameraSettings;->getEncodingQuality(Z)Lcom/android/camera/EncodingQuality;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/android/camera/EncodingQuality;->toInteger(Z)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setJpegQuality(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v7

    sget v8, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    invoke-virtual {v7, v8}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setFilterId(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v7

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v8

    if-eqz v8, :cond_8

    move v3, v11

    :cond_8
    invoke-virtual {v7, v3}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setOrientation(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v3

    invoke-static {}, Lcom/android/camera/CameraSettings;->isTimeWaterMarkOpen()Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, v1, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mActivityBase:Lcom/android/camera/ActivityBase;

    invoke-static {v7}, Lcom/android/camera/Util;->getTimeWatermark(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    :cond_9
    move-object v7, v10

    :goto_6
    invoke-virtual {v3, v7}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setTimeWaterMarkString(Ljava/lang/String;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->getDeviceWaterMarkParam()Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setDeviceWatermarkParam(Lcom/android/camera/effect/renders/DeviceWatermarkParam;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->getPictureInfo()Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setPictureInfo(Lcom/xiaomi/camera/core/PictureInfo;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setLocation(Landroid/location/Location;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->build()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/xiaomi/camera/core/ParallelTaskData;->fillParameter(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;)V

    iget-object v3, v1, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mActivityBase:Lcom/android/camera/ActivityBase;

    invoke-interface {v3}, Lcom/android/camera/AppController;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v3

    invoke-virtual {v3, v0, v10, v10}, Lcom/android/camera/storage/ImageSaver;->onParallelProcessFinish(Lcom/xiaomi/camera/core/ParallelTaskData;Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CameraCharacteristics;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_a
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_b
    if-eqz v4, :cond_c

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_c
    iget-object v0, v1, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mActivityBase:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    instance-of v2, v0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    if-eqz v2, :cond_d

    :goto_7
    check-cast v0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->onMimojiCaptureCallback()V

    :cond_d
    iput-boolean v6, v1, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsNeedCapture:Z

    invoke-static {}, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->getInstance()Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->dumpTakePicture(I)V

    goto :goto_8

    :catchall_0
    move-exception v0

    goto :goto_9

    :catch_0
    move-exception v0

    :try_start_1
    const-string v3, "Mimojifu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mimoji void CaptureCallback[byteBuffer] exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_e
    if-eqz v4, :cond_f

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_f
    iget-object v0, v1, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mActivityBase:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    instance-of v2, v0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    if-eqz v2, :cond_d

    goto :goto_7

    :goto_8
    return v5

    :goto_9
    if-eqz v2, :cond_10

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_10

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_10
    if-eqz v4, :cond_11

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_11

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_11
    iget-object v2, v1, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mActivityBase:Lcom/android/camera/ActivityBase;

    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v2

    instance-of v3, v2, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    if-eqz v3, :cond_12

    check-cast v2, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->onMimojiCaptureCallback()V

    :cond_12
    iput-boolean v6, v1, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsNeedCapture:Z

    invoke-static {}, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->getInstance()Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->dumpTakePicture(I)V

    throw v0
.end method

.method private dealCaptureIconData()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->queueIsEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LOooO0O0/OooO0OO/OooO00o/OooOo00/OooO0O0/OooO0OO/OooO0O0/OooO0o0;

    invoke-direct {v1, p0}, LOooO0O0/OooO0OO/OooO00o/OooOo00/OooO0O0/OooO0OO/OooO0O0/OooO0o0;-><init>(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private drawEditFu(Lcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;)I
    .locals 12

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/SurfaceTextureScreenNail;->getExtTexture()Lcom/android/gallery3d/ui/ExtTexture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BasicTexture;->getId()I

    move-result v3

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0703a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f070396

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    add-int v7, v1, v2

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070397

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v1, v7

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundHeight()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    const/4 v11, 0x0

    invoke-static {v11, v2, p3, v7}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/high16 p3, 0x3f800000    # 1.0f

    const v1, 0x3da88ce7    # 0.0823f

    invoke-static {v1, v1, v1, p3}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 p3, 0x4000

    invoke-static {p3}, Landroid/opengl/GLES20;->glClear(I)V

    invoke-interface {p2}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    invoke-virtual {p1}, Lcom/android/camera/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p3

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->trans:[F

    invoke-virtual {p3, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    iget-boolean p3, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsFrontCamera:Z

    invoke-virtual {p0, p3}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->rotateCameraImage(Z)V

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mCameraNV21Byte:[B

    iget v4, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mPreviewWidth:I

    iget v5, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mPreviewHeight:I

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->Render([BIIII)I

    move-result p3

    iget-object v4, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimoijTexAttribute:Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;

    invoke-virtual {p1}, Lcom/android/camera/CameraScreenNail;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {p1}, Lcom/android/camera/CameraScreenNail;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v9

    const/4 v10, 0x0

    move v5, p3

    move v6, v0

    invoke-virtual/range {v4 .. v10}, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->init(IIIIIZ)Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;

    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimoijTexAttribute:Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;

    invoke-interface {p2, p1}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    iget-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->isSaveEmoticon:Z

    if-eqz p1, :cond_2

    iput-boolean v11, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->isSaveEmoticon:Z

    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->gifUtil:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/GifUtil;

    if-nez p1, :cond_1

    new-instance p1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/GifUtil;

    invoke-direct {p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/GifUtil;-><init>()V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->gifUtil:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/GifUtil;

    :cond_1
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->gifUtil:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/GifUtil;

    const-wide/high16 v0, 0x4039000000000000L    # 25.0

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->onRecordListener:Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper$OnRecordListener;

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/GifUtil;->startRecording(DLcom/faceunity/pta_helper/gif/GifHardEncoderWrapper$OnRecordListener;)V

    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mRealSelectedEmoInfoList:Ljava/util/ArrayList;

    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->currentPos:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->gifUtil:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/GifUtil;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/GifUtil;->getGifFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;->setGifFileName(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mRealSelectedEmoInfoList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->currentPos:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;->getIndex()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v0, p0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->startRecordGif(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;ILcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance$EmoticonPackListener;)V

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->dealCaptureIconData()V

    invoke-interface {p2}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    invoke-interface {p2}, Lcom/android/gallery3d/ui/GLCanvas;->recycledResources()V

    return p3
.end method

.method private drawPreviewFu(Lcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;)I
    .locals 9

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundHeight()I

    move-result v1

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/SurfaceTextureScreenNail;->getExtTexture()Lcom/android/gallery3d/ui/ExtTexture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BasicTexture;->getId()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsFrontCamera:Z

    invoke-virtual {p0, v1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->rotateCameraImage(Z)V

    invoke-virtual {p1}, Lcom/android/camera/CameraScreenNail;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {p1}, Lcom/android/camera/CameraScreenNail;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mCameraNV21Byte:[B

    iget v4, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mPreviewWidth:I

    iget v5, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mPreviewHeight:I

    iget v6, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->NVFormat:I

    move v3, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->Render([BIIII)I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->fboUtils:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;

    invoke-direct {v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;-><init>()V

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->fboUtils:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;

    :cond_1
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->fboUtils:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;

    iget v3, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mPreviewWidth:I

    iget v4, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mPreviewHeight:I

    iget-object v5, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->trans:[F

    sget-object v6, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/GlUtil;->IDENTITY_MATRIX:[F

    move v2, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->drawFBO(III[F[F)I

    move-result v1

    const-string v0, "Mimojifu"

    const-string v2, "mFuTextureId == 0"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-lez v1, :cond_3

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimoijTexAttribute:Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v5

    const/4 v8, 0x0

    move v3, v1

    move v6, v7

    move v7, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->init(IIIIIZ)Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;

    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimoijTexAttribute:Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;

    invoke-interface {p2, p1}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mUiHandler:Landroid/os/Handler;

    new-instance p2, LOooO0O0/OooO0OO/OooO00o/OooOo00/OooO0O0/OooO0OO/OooO0O0/OooO;

    invoke-direct {p2, p0}, LOooO0O0/OooO0OO/OooO00o/OooOo00/OooO0O0/OooO0OO/OooO0O0/OooO;-><init>(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return v1
.end method

.method private drawPreviewNormal(Lcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;)V
    .locals 6

    iget-object p3, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->isInMimojiCreate()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mCameraNV21Byte:[B

    invoke-virtual {p1}, Lcom/android/camera/SurfaceTextureScreenNail;->getExtTexture()Lcom/android/gallery3d/ui/ExtTexture;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/gallery3d/ui/BasicTexture;->getId()I

    move-result v2

    iget v3, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mPreviewWidth:I

    iget v4, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mPreviewHeight:I

    iget v5, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->NVFormat:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->Render([BIIII)I

    iget-object p3, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz p3, :cond_0

    iget p3, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mPreviewWidth:I

    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mPreviewHeight:I

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getFaceNum()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getRotationData()[F

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    invoke-virtual {v3}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getLandmarksData()[F

    move-result-object v3

    invoke-static {p3, v0, v1, v2, v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/util/FaceCheckUtil;->checkFace(III[F[F)I

    move-result p3

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0, p3}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->mimojiFaceDetect(I)V

    :cond_0
    iget-object p3, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mExtTexAttribute:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-virtual {p1}, Lcom/android/camera/SurfaceTextureScreenNail;->getExtTexture()Lcom/android/gallery3d/ui/ExtTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->trans:[F

    invoke-virtual {p1}, Lcom/android/camera/CameraScreenNail;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p3, v0, v1, p1}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->init(Lcom/android/gallery3d/ui/ExtTexture;[FLandroid/graphics/Rect;)Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mExtTexAttribute:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-interface {p2, p1}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    return-void
.end method

.method private getDeviceWaterMarkParam()Lcom/android/camera/effect/renders/DeviceWatermarkParam;
    .locals 9

    invoke-static {}, Lcom/android/camera/CameraSettings;->isDualCameraWaterMarkOpen()Z

    move-result v1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCameraWaterMarkOpen()Z

    move-result v2

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    const v3, 0x7f070224

    invoke-static {v3, v0}, Lcom/android/camera/CameraSettings;->getResourceFloat(IF)F

    move-result v3

    const v4, 0x7f070222

    invoke-static {v4, v0}, Lcom/android/camera/CameraSettings;->getResourceFloat(IF)F

    move-result v4

    const v5, 0x7f070223

    :goto_0
    invoke-static {v5, v0}, Lcom/android/camera/CameraSettings;->getResourceFloat(IF)F

    move-result v0

    move v7, v0

    move v5, v3

    move v6, v4

    goto :goto_1

    :cond_0
    if-eqz v2, :cond_1

    const v3, 0x7f0702bd

    invoke-static {v3, v0}, Lcom/android/camera/CameraSettings;->getResourceFloat(IF)F

    move-result v3

    const v4, 0x7f0702bb

    invoke-static {v4, v0}, Lcom/android/camera/CameraSettings;->getResourceFloat(IF)F

    move-result v4

    const v5, 0x7f0702bc

    goto :goto_0

    :cond_1
    move v5, v0

    move v6, v5

    move v7, v6

    :goto_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelRearOn()Z

    move-result v3

    new-instance v8, Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualCameraWaterMarkFilePathVendor()Ljava/lang/String;

    move-result-object v4

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;-><init>(ZZZLjava/lang/String;FFF)V

    return-object v8
.end method

.method private getPictureInfo()Lcom/xiaomi/camera/core/PictureInfo;
    .locals 2

    new-instance v0, Lcom/xiaomi/camera/core/PictureInfo;

    invoke-direct {v0}, Lcom/xiaomi/camera/core/PictureInfo;-><init>()V

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->isFrontMirror()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/core/PictureInfo;->setFrontMirror(Z)Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/core/PictureInfo;->setSensorType(Z)Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/core/PictureInfo;->setBokehFrontCamera(Z)Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v0

    const-string v1, "off"

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/core/PictureInfo;->setHdrType(Ljava/lang/String;)Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->getOperatingMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/core/PictureInfo;->setOpMode(I)Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/PictureInfo;->end()V

    return-object v0
.end method

.method private isFrontMirror()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsFrontCamera:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isLiveShotOn()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontMirror()Z

    move-result v0

    return v0
.end method

.method private onCreateAvatarShutterClick(Landroid/graphics/Bitmap;I)V
    .locals 7

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v0, p2

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getEncodingQuality(Z)Lcom/android/camera/EncodingQuality;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/EncodingQuality;->toInteger(Z)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getBitmapData(Landroid/graphics/Bitmap;I)[B

    move-result-object v1

    invoke-static {}, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->getInstance()Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;

    move-result-object v2

    invoke-virtual {v2, v0, v1, p2}, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->dumpCreateFile(Landroid/graphics/Bitmap;[BI)V

    if-eq v0, p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->createAvatar([B)V

    return-void
.end method

.method private onProfileFinish()V
    .locals 3

    const-string v0, "Mimojifu"

    const-string v1, "onProfileFinish"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xd4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onPostSavingFinish()V

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertMimojiFaceDetect(ZI)V

    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xf7

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiEditorControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->mimojiEnd()V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->setMode(I)V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiEditorControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    if-eqz v0, :cond_2

    const/16 v1, 0xcb

    invoke-interface {v0, v1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;->startMimojiEdit(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mActivityBase:Lcom/android/camera/ActivityBase;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->onMimojiCreateCompleted(Z)V

    :cond_3
    const-string v0, "mimoji_click_create_capture"

    const-string v1, "create"

    invoke-static {v0, v1}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimojiClick(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private readPreviewPixels(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;)[B
    .locals 8

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundHeight()I

    move-result p1

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    sub-int v2, p1, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget v3, p2, Landroid/graphics/Rect;->right:I

    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mActivityBase:Lcom/android/camera/ActivityBase;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->trans:[F

    invoke-virtual {p1, p2}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    mul-int p1, v3, v4

    mul-int/lit8 p1, p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/4 v1, 0x0

    const/16 v5, 0x1908

    const/16 v6, 0x1401

    move-object v7, p1

    invoke-static/range {v1 .. v7}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1
.end method

.method private showLoadProgress(Z)V
    .locals 3

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xf8

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiBottomList;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mUiHandler:Landroid/os/Handler;

    new-instance v2, LOooO0O0/OooO0OO/OooO00o/OooOo00/OooO0O0/OooO0OO/OooO0O0/OooO0o;

    invoke-direct {v2, p1, v0}, LOooO0O0/OooO0OO/OooO00o/OooOo00/OooO0O0/OooO0OO/OooO0O0/OooO0o;-><init>(ZLcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiBottomList;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsLoadFinish:Z

    return-void
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->takeBuffer()[B

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mTakePicIconIng:Z

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v2, 0x12c

    invoke-static {v2, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mTakeIconCallBack:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$TakePhotoCallBack;

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$TakePhotoCallBack;->takePhotoCallBack(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method public synthetic OooO00o(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsMimojiFuCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsMimojiFuCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0, v1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->showLoadProgress(Z)V

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->initMimojiResource()V

    :cond_0
    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o0O00O()LOooO0O0/OooO0o0/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->Oooo000()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/CameraSettings;->getMimojiModleVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v1

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsMimojiReseting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, v1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->showLoadProgress(Z)V

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->clearAvatar()V

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Lcom/android/camera/CameraSettings;->setMimojiDownloadTime(J)V

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getCurrentMimojiList()Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/camera/resource/BaseResourceList;->setDeparted()V

    :cond_1
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->TEMPLATE_PATH:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/camera/module/impl/component/FileUtils;->deleteFile(Ljava/io/File;)Z

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->SHADER_CACHE_DIR:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mContext:Landroid/content/Context;

    const-string v2, "mimoji_shader.zip"

    sget-object v3, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->SHADER_CACHE_DIR:Ljava/lang/String;

    const v4, 0x8000

    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/Util;->verifyAssetZip(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "Mimojifu"

    const-string v2, "MIMOJIFU SHADER UNZIP ERROR"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setMimojiModleVersion(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsMimojiReseting:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->isNeedEnterFron()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->onSurfaceViewResume()V

    :cond_4
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getInstance()Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->dynamicCameraItem:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    const-string v1, "camera/xiaomi_bg_camscale1.6.bundle"

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->setBundle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->defaultItem:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    const-string v1, "default_bg.bundle"

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->setBundle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->cameraItem:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    const-string v1, "camera/xiaomi_bg_cam.bundle"

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->setBundle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    iget-boolean v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsFrontCamera:Z

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->onCameraChange(ZI)V

    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->onCompleteListener:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager$OnCompleteListener;

    invoke-virtual {p1, v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->setListener(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager$OnCompleteListener;)V

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->reloadConfig()V

    return-void
.end method

.method public synthetic OooO00o(Ljava/util/concurrent/CountDownLatch;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->fboUtils:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->fboUtils:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->reset()V

    :cond_1
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public synthetic OooO00o([BLandroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->dealCaptureData([BLandroid/graphics/Rect;)I

    return-void
.end method

.method public synthetic OooO0O0()V
    .locals 3

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getFaceNum()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const v1, 0x7f1003c3

    invoke-interface {v0, v2, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertMimojiFaceDetect(ZI)V

    :cond_1
    return-void
.end method

.method public synthetic OooO0OO()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f1003f4

    const/16 v2, 0x50

    invoke-static {v0, v1, v2}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;II)V

    return-void
.end method

.method public synthetic OooO0Oo()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getCurrentMimojiInfo()Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->onMimojiSelect(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;Z)V

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->onMimojiInitFinish()V

    return-void
.end method

.method public backToPreview(ZZ)V
    .locals 7

    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getCurrentMimojiInfo()Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->setMode(I)V

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mConfigPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mConfigPath:Ljava/lang/String;

    const-string v3, "add_state"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mConfigPath:Ljava/lang/String;

    const-string v3, "close_state"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsMimojiNeedUpdateSkip:Ljava/util/concurrent/atomic/AtomicBoolean;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->setCurrentMimojiInfo(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;)V

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsMimojiNeedDeleteSkip:Ljava/util/concurrent/atomic/AtomicBoolean;

    :goto_0
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->onMimojiSelect(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;Z)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v2, 0xac

    invoke-virtual {p1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xaf

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->reInitTipImage()V

    const/16 v3, 0x8

    const v4, 0x7f1003c4

    const-wide/16 v5, -0x1

    invoke-interface {p1, v3, v4, v5, v6}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertAiDetectTipHint(IIJ)V

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-interface {p1, v4, v3}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertMimojiFaceDetect(ZI)V

    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {v3}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getMimojiRecordState()I

    move-result v3

    const/16 v5, 0xc1

    if-ne v3, v0, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_1

    new-array v3, v0, [I

    aput v5, v3, v4

    invoke-interface {p1, v4, v3}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->enableMenuItem(Z[I)V

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-interface {p1, v0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->enableMenuItem(Z[I)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    invoke-interface {p1, v0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->enableMenuItem(Z[I)V

    :goto_1
    invoke-interface {p1, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->reInitAlert(Z)V

    new-array v1, v0, [I

    aput v5, v1, v4

    invoke-interface {p1, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v1, 0xa4

    invoke-virtual {p1, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {p2}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getMimojiPanelState()I

    move-result p2

    if-eq p2, v0, :cond_2

    invoke-interface {p1, v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->showMimojiPanel(I)Z

    goto :goto_2

    :cond_2
    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->updateMimojiBottomTipImage()V

    :goto_2
    invoke-virtual {p0, v4}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->setDisableSingleTapUp(Z)V

    return-void

    :array_0
    .array-data 4
        0xc5
        0xa2
    .end array-data

    :array_1
    .array-data 4
        0xc5
        0xc1
        0xa2
    .end array-data
.end method

.method public changeToGif(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    const-string v0, "mimoji_click_gif"

    invoke-static {p1, v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimoji2Click(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getMimojiRecordState()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->setMimojiRecordStateFromGif(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getMimojiRecordStateFromGif()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->setMimojiRecordState(I)V

    :goto_0
    return-void
.end method

.method public createEmoticon()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->onCompleteListener:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager$OnCompleteListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->setListener(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager$OnCompleteListener;)V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->setDefultFuScene()V

    return-void
.end method

.method public deleteMimojiCache(I)Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mimoji boolean deleteMimojiCache[type] : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mimojifu"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    if-eq p1, v0, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    sget-object p1, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->GIF_CACHE_DIR:Ljava/lang/String;

    :goto_0
    invoke-static {p1}, Lcom/android/camera/module/impl/component/FileUtils;->deleteFile(Ljava/lang/String;)Z

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->CREATE_MODLE_CACHE_DIR:Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->EMOTICON_CACHE_DIR:Ljava/lang/String;

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->VIDEO_CACHE_DIR:Ljava/lang/String;

    goto :goto_0

    :cond_4
    sget-object p1, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->VIDEO_CACHE_DIR:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/camera/module/impl/component/FileUtils;->deleteFile(Ljava/lang/String;)Z

    sget-object p1, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->GIF_CACHE_DIR:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/camera/module/impl/component/FileUtils;->deleteFile(Ljava/lang/String;)Z

    sget-object p1, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->EMOTICON_CACHE_DIR:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/camera/module/impl/component/FileUtils;->deleteFile(Ljava/lang/String;)Z

    sget-object p1, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->CREATE_MODLE_CACHE_DIR:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    return v0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mimoji void deleteMimojiCache[] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public generateGif(IF)V
    .locals 3

    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mvp:[F

    const/4 v0, 0x0

    invoke-static {p2, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mvp:[F

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {p2, v0, v1, v2, v1}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->gifUtil:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/GifUtil;

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mvp:[F

    invoke-virtual {p2, p1, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/GifUtil;->sendRecordingData(I[F)V

    return-void
.end method

.method public generateGifEnd()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "generateGif currentNum: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->currentPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mimojifu"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->currentPos:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->currentPos:I

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->gifUtil:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/GifUtil;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/GifUtil;->stopRecording()V

    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->currentPos:I

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mRealSelectedEmoInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->isSaveEmoticon:Z

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->isSaveEmoticon:Z

    :goto_0
    return-void
.end method

.method public getGifBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mGifBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mGifBitmap:Landroid/graphics/Bitmap;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGlcontext()Ljavax/microedition/khronos/egl/EGLContext;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mCameraView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->getEGLContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    return-object v0
.end method

.method public getOperatingMode()I
    .locals 1

    const v0, 0x800b

    return v0
.end method

.method public getTimeValue()Ljava/lang/String;
    .locals 6

    iget-wide v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mTotalRecordingTime:J

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x3a98

    invoke-static/range {v0 .. v5}, Lcom/android/camera/Util;->clamp(JJJ)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Lcom/android/camera/Util;->millisecondToTimeString(JZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoCache()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isGifOn()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->GIF_NORMAL_CACHE_FILE:Ljava/lang/String;

    return-object v0

    :cond_0
    sget-object v0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->VIDEO_NORMAL_CACHE_FILE:Ljava/lang/String;

    return-object v0
.end method

.method public initAvatarEngine(IIIIZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initAvatarEngine with parameters : displayOrientation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", width = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", height = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", isFrontCamera = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Mimojifu"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p3, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mPreviewWidth:I

    iput p4, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mPreviewHeight:I

    iput-boolean p5, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsFrontCamera:Z

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result p1

    iput p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->uiStyle:I

    invoke-static {}, Lcom/android/camera/CameraSettings;->isGifOn()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsGifOn:Z

    invoke-static {}, Lcom/android/camera/Util;->getCameraPreviewRect()Landroid/graphics/Rect;

    move-result-object p1

    iget p3, p1, Landroid/graphics/Rect;->bottom:I

    iget p4, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p3, p4

    iget p1, p1, Landroid/graphics/Rect;->right:I

    const/4 p4, 0x0

    iput-boolean p4, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsRecordStopping:Z

    iput-boolean p4, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsNeedCapture:Z

    iget-boolean p4, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsGifOn:Z

    if-eqz p4, :cond_0

    new-instance p3, Landroid/util/Size;

    invoke-direct {p3, p1, p1}, Landroid/util/Size;-><init>(II)V

    iput-object p3, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mDrawSize:Landroid/util/Size;

    goto :goto_0

    :cond_0
    new-instance p4, Landroid/util/Size;

    invoke-direct {p4, p1, p3}, Landroid/util/Size;-><init>(II)V

    iput-object p4, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mDrawSize:Landroid/util/Size;

    :goto_0
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mLoadHandler:Landroid/os/Handler;

    new-instance p3, LOooO0O0/OooO0OO/OooO00o/OooOo00/OooO0O0/OooO0OO/OooO0O0/OooO0oO;

    invoke-direct {p3, p0, p2}, LOooO0O0/OooO0OO/OooO00o/OooOo00/OooO0O0/OooO0OO/OooO0O0/OooO0oO;-><init>(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;I)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public initMimojiResource()V
    .locals 3

    invoke-static {}, Lcom/faceunity/fuauth_helper/FUAuth;->getExAuth()[B

    move-result-object v0

    invoke-static {}, Lcom/faceunity/fuauth_helper/FUAuth;->fuAuth()[B

    move-result-object v1

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->init(Landroid/content/Context;[B[B)Z

    invoke-static {}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->simpleVerificationMaterial()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->initializeOffine(Landroid/content/Context;)V

    :cond_0
    invoke-static {v1, v0}, Lcom/faceunity/pta_helper/FUAuthCheck;->fuP2ASetAuthInternalCheckEx([B[B)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "helper sdk Auth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mimojifu"

    invoke-static {v1, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;->getInstance()Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;

    return-void
.end method

.method public isAvatarInited()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsLoadFinish:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsMimojiNeedUpdateSkip:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsMimojiNeedDeleteSkip:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOnCreateMimoji()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->isInMimojiCreate()Z

    move-result v0

    return v0
.end method

.method public isProcessorReady()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRecordStopping()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsRecordStopping:Z

    return v0
.end method

.method public isRecording()Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Recording = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsRecording:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mimojifu"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsRecording:Z

    return v0
.end method

.method public onCaptureImage()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mActivityBase:Lcom/android/camera/ActivityBase;

    if-eqz v0, :cond_1

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isCurrentModuleAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsNeedCapture:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateCapture()Z
    .locals 5

    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsFaceDetectSuccess:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mActivityBase:Lcom/android/camera/ActivityBase;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    instance-of v2, v0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    check-cast v0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->setFaceBeautyLevel(I)V

    new-array v2, v3, [I

    const/16 v4, 0xd

    aput v4, v2, v1

    invoke-virtual {v0, v2}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa2

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    invoke-interface {v0, v3}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->showOrHideMimojiProgress(Z)V

    iput-boolean v3, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsNeedCapture:Z

    iput-boolean v3, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsCreateAvatarShutterClick:Z

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->animateCapture()V

    return v3

    :cond_2
    :goto_0
    return v1
.end method

.method public onDeviceRotationChange(I)V
    .locals 3

    iput p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mRotationDevice:I

    const/16 v0, 0x13b

    if-le p1, v0, :cond_0

    const/16 v1, 0x168

    if-le p1, v1, :cond_1

    :cond_0
    const/16 v1, 0x2d

    if-ltz p1, :cond_2

    if-gt p1, v1, :cond_2

    :cond_1
    const/16 p1, 0x5a

    :goto_0
    iput p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mRotationFu:I

    goto :goto_1

    :cond_2
    const/16 v2, 0xe1

    if-le p1, v2, :cond_3

    if-gt p1, v0, :cond_3

    const/4 p1, 0x0

    goto :goto_0

    :cond_3
    const/16 v0, 0x87

    if-le p1, v0, :cond_4

    if-gt p1, v2, :cond_4

    const/16 p1, 0x10e

    goto :goto_0

    :cond_4
    if-le p1, v1, :cond_5

    if-gt p1, v0, :cond_5

    const/16 p1, 0xb4

    goto :goto_0

    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    if-eqz p1, :cond_6

    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mRotationFu:I

    invoke-virtual {p1, v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->setRotMode(I)V

    :cond_6
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiEditorControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    if-eqz p1, :cond_7

    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mRotationFu:I

    invoke-interface {p1, v0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;->onDeviceRotationChange(I)V

    :cond_7
    return-void
.end method

.method public onDrawFrame(Landroid/graphics/Rect;IIZ)V
    .locals 11

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mActivityBase:Lcom/android/camera/ActivityBase;

    invoke-virtual {p2}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p2

    iget-object p3, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mCameraView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    invoke-virtual {p3}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->getGLCanvas()Lcom/android/gallery3d/ui/GLCanvasImpl;

    move-result-object p3

    invoke-interface {p3}, Lcom/android/gallery3d/ui/GLCanvas;->prepareMimojiRenders()V

    invoke-virtual {p2}, Lcom/android/camera/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p4

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->trans:[F

    invoke-virtual {p4, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundHeight()I

    move-result p4

    invoke-virtual {p2}, Lcom/android/camera/CameraScreenNail;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p4, v0

    invoke-virtual {p2}, Lcom/android/camera/CameraScreenNail;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/camera/CameraScreenNail;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, p4, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    if-eqz p2, :cond_e

    if-eqz p3, :cond_e

    invoke-virtual {p2}, Lcom/android/camera/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p4

    if-eqz p4, :cond_e

    monitor-enter p3

    const/high16 p4, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0, v0, v0, p4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 p4, 0x4000

    invoke-static {p4}, Landroid/opengl/GLES20;->glClear(I)V

    invoke-interface {p3}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    iget-object p4, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    const/4 v0, 0x1

    if-eqz p4, :cond_2

    iget-object p4, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {p4}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->isInMimojiCreate()Z

    move-result p4

    if-nez p4, :cond_2

    iget-object p4, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {p4}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getCurrentMimojiInfo()Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    move-result-object p4

    if-eqz p4, :cond_2

    iget-boolean p4, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsLoadFinish:Z

    if-eqz p4, :cond_2

    iget-object p4, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mCameraNV21Byte:[B

    if-eqz p4, :cond_2

    iget-object p4, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mCameraNV21Byte:[B

    array-length p4, p4

    if-nez p4, :cond_1

    goto :goto_0

    :cond_1
    move p4, v0

    goto :goto_1

    :cond_2
    :goto_0
    move p4, v2

    :goto_1
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getIsInitItemFinish()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsMimojiReseting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsLoadFinish:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->onSurfaceCreated()Z

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->isFuGLPrepared()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v2}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->showLoadProgress(Z)V

    :cond_3
    const/4 v1, -0x1

    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsMimojiNeedDeleteSkip:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsLoadFinish:Z

    if-eqz v3, :cond_4

    iget-object v4, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    iget-object v5, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mCameraNV21Byte:[B

    invoke-virtual {p2}, Lcom/android/camera/SurfaceTextureScreenNail;->getExtTexture()Lcom/android/gallery3d/ui/ExtTexture;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/gallery3d/ui/BasicTexture;->getId()I

    move-result v6

    iget v7, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mPreviewWidth:I

    iget v8, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mPreviewHeight:I

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->Render([BIIII)I

    move-result v1

    move p4, v2

    :cond_4
    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsMimojiNeedUpdateSkip:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsLoadFinish:Z

    if-eqz v3, :cond_5

    iget-object v4, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    iget-object v5, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mCameraNV21Byte:[B

    invoke-virtual {p2}, Lcom/android/camera/SurfaceTextureScreenNail;->getExtTexture()Lcom/android/gallery3d/ui/ExtTexture;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/gallery3d/ui/BasicTexture;->getId()I

    move-result v6

    iget v7, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mPreviewWidth:I

    iget v8, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mPreviewHeight:I

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->Render([BIIII)I

    move-result v1

    move p4, v2

    :cond_5
    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {v3}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->isInMimojiEdit()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p4

    const/16 v1, 0xf7

    invoke-virtual {p4, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p4

    check-cast p4, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    iput-object p4, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiEditorControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    invoke-direct {p0, p2, p3, p1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->drawEditFu(Lcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;)I

    move-result v1

    if-lez v1, :cond_7

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {v3}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->isInMimojiEmoticon()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-direct {p0, p2, p3, p1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->drawEditFu(Lcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;)I

    move-result v1

    if-lez v1, :cond_7

    goto :goto_2

    :cond_7
    move v0, v2

    :goto_2
    move p4, v0

    goto :goto_3

    :cond_8
    if-eqz p4, :cond_9

    invoke-direct {p0, p2, p3, p1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->drawPreviewFu(Lcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;)I

    move-result v1

    if-lez v1, :cond_7

    goto :goto_2

    :cond_9
    :goto_3
    move v4, v1

    if-nez p4, :cond_a

    invoke-direct {p0, p2, p3, p1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->drawPreviewNormal(Lcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;)V

    :cond_a
    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsRecording:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mLiveMediaRecorder:Lcom/android/camera/module/encoder/LiveMediaRecorder;

    if-eqz v0, :cond_c

    if-eqz p4, :cond_b

    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimoijTexAttribute:Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {p2}, Lcom/android/camera/CameraScreenNail;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object p4

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {p2}, Lcom/android/camera/CameraScreenNail;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->init(IIIIIZ)Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;

    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mLiveMediaRecorder:Lcom/android/camera/module/encoder/LiveMediaRecorder;

    iget-object p4, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimoijTexAttribute:Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->isRecording()Z

    move-result v0

    invoke-virtual {p2, p4, v0}, Lcom/android/camera/module/encoder/LiveMediaRecorder;->onSurfaceTextureUpdated(Lcom/android/camera/effect/draw_mode/DrawAttribute;Z)V

    goto :goto_4

    :cond_b
    iget-object p4, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->transTemp:[F

    invoke-static {p4, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object p4, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->transTemp:[F

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Lcom/android/camera/CameraScreenNail;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2}, Lcom/android/camera/CameraScreenNail;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    invoke-static {p4, v0, v1, v3, v4}, Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;->matrixForCrop([FFFFF)V

    iget-object v5, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->trans:[F

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->transTemp:[F

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->trans:[F

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object p4, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mExtTexAttribute:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-virtual {p2}, Lcom/android/camera/SurfaceTextureScreenNail;->getExtTexture()Lcom/android/gallery3d/ui/ExtTexture;

    move-result-object p2

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->trans:[F

    invoke-virtual {p4, p2, v0, p1}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->init(Lcom/android/gallery3d/ui/ExtTexture;[FLandroid/graphics/Rect;)Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mLiveMediaRecorder:Lcom/android/camera/module/encoder/LiveMediaRecorder;

    iget-object p4, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mExtTexAttribute:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->isRecording()Z

    move-result v0

    invoke-virtual {p2, p4, v0}, Lcom/android/camera/module/encoder/LiveMediaRecorder;->onSurfaceTextureUpdated(Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;Z)V

    :cond_c
    :goto_4
    iget-boolean p2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsNeedCapture:Z

    if-eqz p2, :cond_d

    iput-boolean v2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsNeedCapture:Z

    invoke-static {}, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->getInstance()Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->dumpTakePicture(I)V

    invoke-direct {p0, p3, p1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->readPreviewPixels(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;)[B

    move-result-object p2

    iget-object p4, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mCaptureHandler:Landroid/os/Handler;

    new-instance v0, LOooO0O0/OooO0OO/OooO00o/OooOo00/OooO0O0/OooO0OO/OooO0O0/OooO0O0;

    invoke-direct {v0, p0, p2, p1}, LOooO0O0/OooO0OO/OooO00o/OooOo00/OooO0O0/OooO0OO/OooO0O0/OooO0O0;-><init>(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;[BLandroid/graphics/Rect;)V

    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_d
    monitor-exit p3

    goto :goto_5

    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_e
    :goto_5
    return-void
.end method

.method public onMimojiChangeBg(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getFuScene()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuScene;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->fuScene:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuScene;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->getFuItem()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->currentScenePath:[Ljava/lang/String;

    aget-object v4, v3, v2

    if-eqz v4, :cond_2

    aget-object v4, v3, v1

    if-eqz v4, :cond_2

    if-nez p2, :cond_2

    aget-object p2, v3, v2

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->getFuItem()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->getBundle()Ljava/lang/String;

    move-result-object v3

    if-ne p2, v3, :cond_2

    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->currentScenePath:[Ljava/lang/String;

    aget-object p2, p2, v1

    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->dynamicCameraItem:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    invoke-virtual {v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->getBundle()Ljava/lang/String;

    move-result-object v3

    if-ne p2, v3, :cond_2

    return-void

    :cond_2
    iget-boolean p2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsGifOn:Z

    if-eqz p2, :cond_3

    return-void

    :cond_3
    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->currentScenePath:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->getFuItem()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->getBundle()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v2

    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->currentScenePath:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->dynamicCameraItem:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->getBundle()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v1

    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->getFuItem()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->dynamicCameraItem:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    invoke-virtual {p2, v2, v3, v1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->setDynamicBackground(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;Z)V

    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {p2, p1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->setCurrentMimojiBgInfo(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;)V

    goto :goto_1

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getCurrentMimojiBgInfo()Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->defaultItem:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    iget-object v4, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->cameraItem:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    invoke-virtual {p1, v3, v4, v2}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->setDynamicBackground(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;Z)V

    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->refreshFuScene()V

    :cond_5
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->currentScenePath:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->defaultItem:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    invoke-virtual {v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->getBundlePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v2

    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->currentScenePath:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->cameraItem:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->getBundle()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    if-eqz p2, :cond_6

    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {p1, v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->setCurrentMimojiBgInfo(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;)V

    :cond_6
    :goto_1
    const-string p1, "mimoji_change_background"

    invoke-static {v0, p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimoji2Click(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onMimojiChangeTimbre(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreInfo;I)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreInfo;->getTimbreId()I

    move-result p2

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {p2, p1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->setCurrentMimojiTimbreInfo(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreInfo;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {p2, v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->setCurrentMimojiTimbreInfo(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreInfo;)V

    :goto_1
    if-nez p1, :cond_2

    const p2, 0x7f100782

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreInfo;->getDescId()I

    move-result p2

    :goto_2
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->isInMimojiPreview()Z

    move-result v1

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v5, 0xac

    invoke-virtual {v1, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v1, :cond_5

    invoke-interface {v1, v4, p2, v2, v3}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertTopHint(IIJ)V

    goto :goto_3

    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v5, 0xf9

    invoke-virtual {v1, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiFullScreenProtocol;

    if-eqz v1, :cond_4

    invoke-interface {v1, v4, p2, v2, v3}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiFullScreenProtocol;->alertTop(IIJ)V

    :cond_4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p2

    const/16 v1, 0xfc

    invoke-virtual {p2, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p2

    check-cast p2, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiVideoEditor;

    if-eqz p2, :cond_5

    invoke-interface {p2}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiVideoEditor;->changeTimbre()V

    :cond_5
    :goto_3
    const-string p2, "mimoji_change_timbre"

    invoke-static {v0, p2}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimoji2Click(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mimoji void onMimojiChangeTimbre[mimojiTimbreInfo]"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Mimojifu"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onMimojiCreate()V
    .locals 5

    const-string v0, "Mimojifu"

    const-string/jumbo v1, "start create mimoji"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    sget-object v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;->Nama:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->setRenderMode(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;)V

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->releaseRender()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    const v2, 0x7f1003c9

    const-wide/16 v3, -0x1

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertAiDetectTipHint(IIJ)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->mimojiStart()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xd4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->prepareCreateMimoji()V

    return-void
.end method

.method public onMimojiDeleted(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->TEMPLATE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "human.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->TEMPLATE_PATH:Ljava/lang/String;

    invoke-static {v3, v4, v1, v1}, Lcom/android/camera/module/impl/component/FileUtils;->copyFileIfNeed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Lcom/android/camera/CameraSettings;->setMimojiDownloadTime(J)V

    :cond_0
    invoke-static {v2}, Lcom/android/camera/module/impl/component/FileUtils;->readStringFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "data"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {v3}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getCurrentMimojiList()Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/camera/resource/BaseResourceList;->getIndex(Lcom/android/camera/resource/BaseResourceItem;)I

    move-result p1

    const/4 v4, -0x1

    if-eq p1, v4, :cond_1

    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v3}, Lcom/android/camera/resource/BaseResourceList;->setDeparted()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMimojiDeleted error : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Mimojifu"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->setCurrentMimojiInfo(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;)V

    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {p1, v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->setCurrentMimojiBgInfo(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;)V

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->clearAvatar()V

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->onMimojiChangeBg(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;Z)V

    return-void
.end method

.method public onMimojiEmoticonBack()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mCameraView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$2;

    invoke-direct {v1, p0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$2;-><init>(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onMimojiInitFinish()V
    .locals 2

    const-string v0, "Mimojifu"

    const-string v1, "onMimojiInitFinish"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onMimojiSelect(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;Z)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mimoji void onMimojiSelect[mimojiInfo2] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mimojifu"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsShowAvatarLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_a

    if-eqz p1, :cond_a

    iget-object v0, p1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mConfigPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuAvatar:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;->getDir()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mConfigPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "mimoji void onMimojiSelect[mimojiInfo2] x2"

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mConfigPath:Ljava/lang/String;

    const-string v2, "add_state"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mConfigPath:Ljava/lang/String;

    const-string v2, "close_state"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->getInstance()Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->dumpSwitchAvatar(II)V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->setCurrentMimojiInfo(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;)V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->isInMimojiPreview()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getRenderMode()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    move-result-object v0

    sget-object v4, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;->AR:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    if-eq v0, v4, :cond_3

    iput-boolean v3, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsAr:Z

    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    invoke-virtual {p2, v4}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->setRenderMode(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;)V

    const-string p2, " rendermode dif, first set ar"

    invoke-static {v1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v0, " rendermode ==, just show"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsShowAvatarLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getCurrentMimojiBgInfo()Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->isInMimojiPreview()Z

    move-result v0

    if-eqz v0, :cond_4

    move v2, v3

    :cond_4
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    iget-object v1, p1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mConfigPath:Ljava/lang/String;

    invoke-virtual {v0, v1, p2, v2}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->showAvatar(Ljava/lang/String;ZZ)V

    :cond_5
    :goto_0
    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {p2}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->isInMimojiEdit()Z

    move-result p2

    if-nez p2, :cond_6

    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {p2}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->isInMimojiEmoticon()Z

    move-result p2

    if-eqz p2, :cond_7

    :cond_6
    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {p2}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getRenderMode()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    move-result-object p2

    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;->Edit:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    if-eq p2, v0, :cond_7

    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    iget-object p1, p1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mConfigPath:Ljava/lang/String;

    invoke-virtual {p2, p1, v3}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->showAvatar(Ljava/lang/String;Z)V

    :cond_7
    return-void

    :cond_8
    :goto_1
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->setCurrentMimojiInfo(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;)V

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->clearAvatar()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xf8

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiBottomList;

    if-eqz p1, :cond_9

    if-nez p2, :cond_9

    invoke-interface {p1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiBottomList;->refreshMimojiList()I

    :cond_9
    return-void

    :cond_a
    :goto_2
    const-string p1, "mimoji void onMimojiSelect[mimojiInfo2] x1"

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->isInMimojiPreview()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getRenderMode()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    move-result-object p1

    sget-object p2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;->AR:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    if-eq p1, p2, :cond_b

    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    invoke-virtual {p1, p2}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->setRenderMode(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;)V

    const-string p1, " rendermode dif, first fff set ar"

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return-void
.end method

.method public onPreviewFrame(Landroid/media/Image;Lcom/android/camera2/Camera2Proxy;I)Z
    .locals 1

    iget-boolean p2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsLoadFinish:Z

    const/4 p3, 0x0

    if-eqz p2, :cond_4

    if-eqz p1, :cond_4

    invoke-static {p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/ImageBufferUtil;->getNV21(Landroid/media/Image;)[B

    move-result-object p1

    if-eqz p1, :cond_3

    array-length p2, p1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mCameraNV21Byte:[B

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mCameraNV21Byte:[B

    array-length p2, p2

    array-length v0, p1

    if-ge p2, v0, :cond_2

    :cond_1
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mCameraNV21Byte:[B

    array-length p2, p1

    new-array p2, p2, [B

    iput-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mCameraNV21Byte:[B

    :cond_2
    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mCameraNV21Byte:[B

    array-length v0, p1

    invoke-static {p1, p3, p2, p3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_3
    :goto_0
    const-string p1, "Mimojifu"

    const-string p2, "previewImage data null"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->isInMimojiEdit()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->isInMimojiEmoticon()Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_5
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiEditorControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    if-eqz p1, :cond_6

    invoke-interface {p1, p3}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;->requestRender(Z)V

    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mCameraView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    invoke-virtual {p1}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->requestRender()V

    goto :goto_2

    :cond_6
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 p2, 0xf7

    invoke-virtual {p1, p2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiEditorControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->isInMimojiPreview()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->isInMimojiCreate()Z

    move-result p1

    if-eqz p1, :cond_9

    :cond_8
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mCameraView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    invoke-virtual {p1}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->requestRender()V

    :cond_9
    const/4 p1, 0x1

    return p1
.end method

.method public onRecordStart()V
    .locals 10

    const-string v0, "Mimojifu"

    const-string/jumbo v1, "start record..."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsRecording:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mActivityBase:Lcom/android/camera/ActivityBase;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mLiveMediaRecorder:Lcom/android/camera/module/encoder/LiveMediaRecorder;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/camera/module/encoder/LiveMediaRecorder;

    invoke-direct {v0}, Lcom/android/camera/module/encoder/LiveMediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mLiveMediaRecorder:Lcom/android/camera/module/encoder/LiveMediaRecorder;

    :cond_1
    const/4 v0, 0x2

    invoke-static {}, Lcom/android/camera/CameraSettings;->getVideoEncoder()I

    move-result v1

    const/4 v2, 0x5

    invoke-static {}, Lcom/android/camera/CameraSettings;->isGifOn()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->deleteMimojiCache(I)Z

    sget-object v1, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->VIDEO_CACHE_DIR:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/camera/module/impl/component/FileUtils;->makeNoMediaDir(Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->getVideoCache()Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mPreviewHeight:I

    iget v4, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mPreviewWidth:I

    invoke-static {v0, v1, v3, v4}, Lcom/android/camera/Util;->genContentValues(ILjava/lang/String;II)Landroid/content/ContentValues;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->deleteMimojiCache(I)Z

    sget-object v1, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->GIF_CACHE_DIR:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/camera/module/impl/component/FileUtils;->makeNoMediaDir(Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->getVideoCache()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x1f4

    invoke-static {v0, v1, v3, v3}, Lcom/android/camera/Util;->genContentValues(ILjava/lang/String;II)Landroid/content/ContentValues;

    move-result-object v0

    :goto_0
    move-object v4, v0

    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mLiveMediaRecorder:Lcom/android/camera/module/encoder/LiveMediaRecorder;

    iget v5, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mRotationDevice:I

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mCameraView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->getEGLContext14()Landroid/opengl/EGLContext;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMediaEncoderListener:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$MimojiEncoderListener;

    const/4 v8, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual/range {v3 .. v9}, Lcom/android/camera/module/encoder/LiveMediaRecorder;->init(Landroid/content/ContentValues;ILandroid/opengl/EGLContext;Lcom/android/camera/module/encoder/LiveMediaRecorder$EncoderListener;ZF)Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->updateRecordingTime()V

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mLiveMediaRecorder:Lcom/android/camera/module/encoder/LiveMediaRecorder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/module/encoder/LiveMediaRecorder;->startRecorder(J)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mActivityBase:Lcom/android/camera/ActivityBase;

    invoke-interface {v0}, Lcom/android/camera/AppController;->getCurrentModuleIndex()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getFlashMode(I)Ljava/lang/String;

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3a5

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;->isBluetoothScoOn()Z

    :cond_4
    iput-boolean v2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsRecording:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mRecordingStartTime:J

    :cond_5
    :goto_1
    return-void
.end method

.method public onRecordStop(I)V
    .locals 3

    const-string v0, "Mimojifu"

    const-string/jumbo v1, "stop record..."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsRecordStopping:Z

    iput p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mStopRecordType:I

    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mLiveMediaRecorder:Lcom/android/camera/module/encoder/LiveMediaRecorder;

    if-eqz p1, :cond_1

    iget-wide v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mRecordingStartTime:J

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/camera/module/encoder/LiveMediaRecorder;->stopRecorder(JZ)Z

    :cond_1
    return-void
.end method

.method public onRecordStopped(Z)V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsRecording:Z

    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsRecordStopping:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGifOn()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-wide v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mTotalRecordingTime:J

    const-wide/16 v2, 0x3e8

    cmp-long p1, v0, v2

    const/16 v0, 0xfb

    if-gez p1, :cond_2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$MimojiGifEditor;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$MimojiGifEditor;->coverGifError()V

    :cond_1
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mUiHandler:Landroid/os/Handler;

    new-instance v0, LOooO0O0/OooO0OO/OooO00o/OooOo00/OooO0O0/OooO0OO/OooO0O0/OooO0oo;

    invoke-direct {v0, p0}, LOooO0O0/OooO0OO/OooO00o/OooOo00/OooO0O0/OooO0OO/OooO0O0/OooO0oo;-><init>(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$MimojiGifEditor;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->getVideoCache()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mTotalRecordingTime:J

    invoke-interface {p1, v0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$MimojiGifEditor;->combineVideoAudio(Ljava/lang/String;J)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xfc

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiVideoEditor;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->getVideoCache()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mStopRecordType:I

    invoke-interface {p1, v0, v1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiVideoEditor;->combineVideoAudio(Ljava/lang/String;I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onSurfaceViewPause()V
    .locals 4

    const-string v0, "Mimojifu"

    const-string v1, " eee onSurfaceViewPause "

    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mCameraView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mActivityBase:Lcom/android/camera/ActivityBase;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/camera/AppController;->getCurrentModuleIndex()I

    move-result v1

    const/16 v2, 0xb8

    if-ne v1, v2, :cond_0

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mCameraView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    new-instance v2, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$1;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$1;-><init>(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    const-wide/16 v1, 0x1

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiEditorControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;->onSurfaceViewPause()V

    goto :goto_1

    :cond_0
    const-string v1, " null onSurfaceViewPause "

    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public onSurfaceViewResume()V
    .locals 3

    const-string v0, "Mimojifu"

    const-string v1, " EE onSurfaceViewResume "

    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mActivityBase:Lcom/android/camera/ActivityBase;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/camera/AppController;->getCurrentModuleIndex()I

    move-result v1

    const/16 v2, 0xb8

    if-ne v1, v2, :cond_0

    const-string v1, " XX onSurfaceViewResume "

    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->enterTheFrontDesk()V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiEditorControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;->onSurfaceViewResume()V

    :cond_0
    return-void
.end method

.method public refeshMaterialConfig()V
    .locals 1

    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;->getInstance()Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;->initMaterialConfig()V

    return-void
.end method

.method public registerProtocol()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xf6

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public release()V
    .locals 5

    const-string v0, "Mimojifu"

    const-string v1, "avatar release"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mCameraView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    new-instance v3, LOooO0O0/OooO0OO/OooO00o/OooOo00/OooO0O0/OooO0OO/OooO0O0/OooO00o;

    invoke-direct {v3, p0, v0}, LOooO0O0/OooO0OO/OooO00o/OooOo00/OooO0O0/OooO0OO/OooO0O0/OooO00o;-><init>(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, v3}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x1

    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->onMimojiChangeBg(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsRecordStopping:Z

    return-void
.end method

.method public releaseRender()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->currentScenePath:[Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    return-void
.end method

.method public reloadConfig()V
    .locals 2

    const-string v0, "Mimojifu"

    const-string v1, "MimojiFuControlImpl reloadConfig"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsCreate:Z

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->isInMimojiPreview()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->onMimojiInitFinish()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mtx:[F

    invoke-static {v1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mvp:[F

    invoke-static {v1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-boolean v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsGifOn:Z

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getCurrentMimojiBgInfo()Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;

    move-result-object v1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->onMimojiChangeBg(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;Z)V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mUiHandler:Landroid/os/Handler;

    new-instance v1, LOooO0O0/OooO0OO/OooO00o/OooOo00/OooO0O0/OooO0OO/OooO0O0/OooO0Oo;

    invoke-direct {v1, p0}, LOooO0O0/OooO0OO/OooO00o/OooOo00/OooO0O0/OooO0OO/OooO0O0/OooO0Oo;-><init>(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public rotateCameraImage(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->rotateMode:I

    iput p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->flipX:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->flipY:I

    invoke-static {p1, v1, v0}, Lcom/faceunity/wrapper/faceunity;->fuSetInputCameraMatrix(III)V

    iget p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mPreviewHeight:I

    sput p1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->RENDER_WIDTH:I

    iget p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mPreviewWidth:I

    sput p1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->RENDER_HEIGHT:I

    sget p1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->RENDER_WIDTH:I

    sget v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->RENDER_HEIGHT:I

    invoke-static {p1, v0}, Lcom/faceunity/wrapper/faceunity;->fuSetOutputResolution(II)V

    return-void
.end method

.method public saveEmoticon(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mCountEmotGif:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mRealSelectedEmoInfoList:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->currentPos:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->isSaveEmoticon:Z

    return-void
.end method

.method public setDetectSuccess(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsFaceDetectSuccess:Z

    return-void
.end method

.method public setDisableSingleTapUp(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mActivityBase:Lcom/android/camera/ActivityBase;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    invoke-virtual {v0, p1}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->setDisableSingleTapUp(Z)V

    return-void
.end method

.method public setNeedTakePic()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsNeedTakePicIcon:Z

    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mTakePicIconIng:Z

    return-void
.end method

.method public takePicIcon(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$TakePhotoCallBack;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mTakePicIconIng:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mTakeIconCallBack:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$TakePhotoCallBack;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsNeedTakePicIcon:Z

    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mTakePicIconIng:Z

    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xf6

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->release()V

    return-void
.end method

.method public updateRecordingTime()V
    .locals 7

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mTotalRecordingTime:J

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGifOn()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1388

    goto :goto_0

    :cond_1
    const/16 v0, 0x3a98

    :goto_0
    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMaxVideoDurationInMs:I

    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$4;

    iget v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMaxVideoDurationInMs:I

    int-to-long v1, v1

    const-wide/16 v3, 0x1c2

    add-long/2addr v3, v1

    const-wide/16 v5, 0x3e8

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$4;-><init>(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;JJ)V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method
