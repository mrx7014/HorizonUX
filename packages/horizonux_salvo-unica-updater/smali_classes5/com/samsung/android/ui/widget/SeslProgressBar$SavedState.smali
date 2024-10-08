.class public Lcom/samsung/android/ui/widget/SeslProgressBar$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SeslProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/widget/SeslProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/ui/widget/SeslProgressBar$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public progress:I

.field public secondaryProgress:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2332
    new-instance v0, Lcom/samsung/android/ui/widget/SeslProgressBar$SavedState$1;

    invoke-direct {v0}, Lcom/samsung/android/ui/widget/SeslProgressBar$SavedState$1;-><init>()V

    sput-object v0, Lcom/samsung/android/ui/widget/SeslProgressBar$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "var1"    # Landroid/os/Parcel;

    .line 2345
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 2346
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar$SavedState;->progress:I

    .line 2347
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar$SavedState;->secondaryProgress:I

    .line 2348
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "var1"    # Landroid/os/Parcelable;

    .line 2351
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2352
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "var1"    # Landroid/os/Parcel;
    .param p2, "var2"    # I

    .line 2355
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2356
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar$SavedState;->progress:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2357
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar$SavedState;->secondaryProgress:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2358
    return-void
.end method
