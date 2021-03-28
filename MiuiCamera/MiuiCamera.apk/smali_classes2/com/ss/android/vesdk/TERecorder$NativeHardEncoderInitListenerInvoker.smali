.class public Lcom/ss/android/vesdk/TERecorder$NativeHardEncoderInitListenerInvoker;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/TERecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NativeHardEncoderInitListenerInvoker"
.end annotation


# instance fields
.field public mListener:Lcom/ss/android/vesdk/VEListener$VERecorderNativeInitListener;

.field public mRet:Z


# direct methods
.method public constructor <init>(Lcom/ss/android/vesdk/VEListener$VERecorderNativeInitListener;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder$NativeHardEncoderInitListenerInvoker;->mListener:Lcom/ss/android/vesdk/VEListener$VERecorderNativeInitListener;

    iput-boolean p2, p0, Lcom/ss/android/vesdk/TERecorder$NativeHardEncoderInitListenerInvoker;->mRet:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$NativeHardEncoderInitListenerInvoker;->mListener:Lcom/ss/android/vesdk/VEListener$VERecorderNativeInitListener;

    iget-boolean v1, p0, Lcom/ss/android/vesdk/TERecorder$NativeHardEncoderInitListenerInvoker;->mRet:Z

    invoke-interface {v0, v1}, Lcom/ss/android/vesdk/VEListener$VERecorderNativeInitListener;->onHardEncoderInit(Z)V

    return-void
.end method
