.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$MasterFilterProtocol;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/protocol/ModeProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MasterFilterProtocol"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/protocol/ModeProtocol$MasterFilterProtocol$DismissType;
    }
.end annotation


# static fields
.field public static final DISMISS_ALPHA:I = 0x3

.field public static final DISMISS_SILENT:I = 0x1

.field public static final DISMISS_SLIDE:I = 0x2

.field public static final KEEP:I = 0x0

.field public static final TYPE_TAG:I = 0x3a6


# virtual methods
.method public abstract dismiss(II)Z
.end method

.method public abstract isShowing()Z
.end method

.method public abstract show()V
.end method
