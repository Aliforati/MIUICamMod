.class public final Landroidx/core/provider/FontsContractCompat$TypefaceResult;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/provider/FontsContractCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TypefaceResult"
.end annotation


# instance fields
.field public final mResult:I

.field public final mTypeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/graphics/Typeface;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/provider/FontsContractCompat$TypefaceResult;->mTypeface:Landroid/graphics/Typeface;

    iput p2, p0, Landroidx/core/provider/FontsContractCompat$TypefaceResult;->mResult:I

    return-void
.end method
