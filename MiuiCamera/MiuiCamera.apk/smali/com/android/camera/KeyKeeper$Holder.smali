.class public Lcom/android/camera/KeyKeeper$Holder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/KeyKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation


# static fields
.field public static mInstance:Lcom/android/camera/KeyKeeper;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/camera/KeyKeeper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/camera/KeyKeeper;-><init>(Lcom/android/camera/KeyKeeper$1;)V

    sput-object v0, Lcom/android/camera/KeyKeeper$Holder;->mInstance:Lcom/android/camera/KeyKeeper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$100()Lcom/android/camera/KeyKeeper;
    .locals 1

    sget-object v0, Lcom/android/camera/KeyKeeper$Holder;->mInstance:Lcom/android/camera/KeyKeeper;

    return-object v0
.end method
