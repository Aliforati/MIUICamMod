.class public Lcom/ss/android/ttve/common/TESpdLogInvoker;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->loadLibrary()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native close()V
.end method

.method public native error(Ljava/lang/String;)I
.end method

.method public native getLogFiles(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native info(ILjava/lang/String;)I
.end method

.method public native initSpdLog(Ljava/lang/String;II)I
.end method

.method public native setLevel(I)V
.end method

.method public native warn(Ljava/lang/String;)I
.end method
