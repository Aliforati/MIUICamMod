.class public Lcom/ss/android/vesdk/TERecorder$NativeInitListenerInvoker;
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
    name = "NativeInitListenerInvoker"
.end annotation


# instance fields
.field public mListener:Lcom/ss/android/vesdk/VEListener$VERecorderNativeInitListener;

.field public mRet:I


# direct methods
.method public constructor <init>(Lcom/ss/android/vesdk/VEListener$VERecorderNativeInitListener;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder$NativeInitListenerInvoker;->mListener:Lcom/ss/android/vesdk/VEListener$VERecorderNativeInitListener;

    iput p2, p0, Lcom/ss/android/vesdk/TERecorder$NativeInitListenerInvoker;->mRet:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$NativeInitListenerInvoker;->mListener:Lcom/ss/android/vesdk/VEListener$VERecorderNativeInitListener;

    iget v1, p0, Lcom/ss/android/vesdk/TERecorder$NativeInitListenerInvoker;->mRet:I

    const-string v2, "Native init"

    invoke-interface {v0, v1, v2}, Lcom/ss/android/vesdk/VEListener$VERecorderNativeInitListener;->onNativeInit(ILjava/lang/String;)V

    return-void
.end method
