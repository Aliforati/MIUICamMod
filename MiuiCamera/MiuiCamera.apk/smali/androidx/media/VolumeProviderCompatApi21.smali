.class public Landroidx/media/VolumeProviderCompatApi21;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media/VolumeProviderCompatApi21$Delegate;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createVolumeProvider(IIILandroidx/media/VolumeProviderCompatApi21$Delegate;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Landroidx/media/VolumeProviderCompatApi21$1;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/media/VolumeProviderCompatApi21$1;-><init>(IIILandroidx/media/VolumeProviderCompatApi21$Delegate;)V

    return-object v0
.end method

.method public static setCurrentVolume(Ljava/lang/Object;I)V
    .locals 0

    check-cast p0, Landroid/media/VolumeProvider;

    invoke-virtual {p0, p1}, Landroid/media/VolumeProvider;->setCurrentVolume(I)V

    return-void
.end method
