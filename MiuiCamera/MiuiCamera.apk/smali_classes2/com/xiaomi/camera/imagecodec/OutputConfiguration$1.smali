.class public final Lcom/xiaomi/camera/imagecodec/OutputConfiguration$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/imagecodec/OutputConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/xiaomi/camera/imagecodec/OutputConfiguration;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/camera/imagecodec/OutputConfiguration;
    .locals 1

    new-instance v0, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    invoke-direct {v0, p1}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/xiaomi/camera/imagecodec/OutputConfiguration;
    .locals 0

    new-array p1, p1, [Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration$1;->newArray(I)[Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    move-result-object p1

    return-object p1
.end method
