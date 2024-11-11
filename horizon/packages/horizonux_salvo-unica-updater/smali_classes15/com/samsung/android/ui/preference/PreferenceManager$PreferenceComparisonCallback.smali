.class public abstract Lcom/samsung/android/ui/preference/PreferenceManager$PreferenceComparisonCallback;
.super Ljava/lang/Object;
.source "PreferenceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/preference/PreferenceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PreferenceComparisonCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract arePreferenceContentsTheSame(Lcom/samsung/android/ui/preference/SeslPreference;Lcom/samsung/android/ui/preference/SeslPreference;)Z
.end method

.method public abstract arePreferenceItemsTheSame(Lcom/samsung/android/ui/preference/SeslPreference;Lcom/samsung/android/ui/preference/SeslPreference;)Z
.end method
