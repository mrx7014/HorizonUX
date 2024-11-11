.class Lcom/samsung/android/ui/preference/SeslSeekBarPreference$1;
.super Ljava/lang/Object;
.source "SeslSeekBarPreference.java"

# interfaces
.implements Lcom/samsung/android/ui/widget/SeslSeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/ui/preference/SeslSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/ui/preference/SeslSeekBarPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/ui/preference/SeslSeekBarPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/ui/preference/SeslSeekBarPreference;

    .line 52
    iput-object p1, p0, Lcom/samsung/android/ui/preference/SeslSeekBarPreference$1;->this$0:Lcom/samsung/android/ui/preference/SeslSeekBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/samsung/android/ui/widget/SeslSeekBar;IZ)V
    .locals 2
    .param p1, "var1"    # Lcom/samsung/android/ui/widget/SeslSeekBar;
    .param p2, "var2"    # I
    .param p3, "var3"    # Z

    .line 54
    if-eqz p3, :cond_0

    .line 55
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslSeekBarPreference$1;->this$0:Lcom/samsung/android/ui/preference/SeslSeekBarPreference;

    .line 56
    .local v0, "var4":Lcom/samsung/android/ui/preference/SeslSeekBarPreference;
    iget-boolean v1, v0, Lcom/samsung/android/ui/preference/SeslSeekBarPreference;->mTrackingTouch:Z

    if-nez v1, :cond_0

    .line 58
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/preference/SeslSeekBarPreference;->syncValueInternal(Lcom/samsung/android/ui/widget/SeslSeekBar;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    goto :goto_0

    .line 59
    :catchall_0
    move-exception v1

    .line 60
    .local v1, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 65
    .end local v0    # "var4":Lcom/samsung/android/ui/preference/SeslSeekBarPreference;
    .end local v1    # "throwable":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void
.end method

.method public onStartTrackingTouch(Lcom/samsung/android/ui/widget/SeslSeekBar;)V
    .locals 2
    .param p1, "var1"    # Lcom/samsung/android/ui/widget/SeslSeekBar;

    .line 68
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslSeekBarPreference$1;->this$0:Lcom/samsung/android/ui/preference/SeslSeekBarPreference;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/ui/preference/SeslSeekBarPreference;->mTrackingTouch:Z

    .line 69
    return-void
.end method

.method public onStopTrackingTouch(Lcom/samsung/android/ui/widget/SeslSeekBar;)V
    .locals 4
    .param p1, "var1"    # Lcom/samsung/android/ui/widget/SeslSeekBar;

    .line 72
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslSeekBarPreference$1;->this$0:Lcom/samsung/android/ui/preference/SeslSeekBarPreference;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/ui/preference/SeslSeekBarPreference;->mTrackingTouch:Z

    .line 73
    invoke-virtual {p1}, Lcom/samsung/android/ui/widget/SeslSeekBar;->getProgress()I

    move-result v0

    .line 74
    .local v0, "var2":I
    iget-object v1, p0, Lcom/samsung/android/ui/preference/SeslSeekBarPreference$1;->this$0:Lcom/samsung/android/ui/preference/SeslSeekBarPreference;

    .line 75
    .local v1, "var3":Lcom/samsung/android/ui/preference/SeslSeekBarPreference;
    iget v2, v1, Lcom/samsung/android/ui/preference/SeslSeekBarPreference;->mMin:I

    add-int/2addr v2, v0

    iget v3, v1, Lcom/samsung/android/ui/preference/SeslSeekBarPreference;->mSeekBarValue:I

    if-eq v2, v3, :cond_0

    .line 77
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/samsung/android/ui/preference/SeslSeekBarPreference;->syncValueInternal(Lcom/samsung/android/ui/widget/SeslSeekBar;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    goto :goto_0

    .line 78
    :catchall_0
    move-exception v2

    .line 79
    .local v2, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 83
    .end local v2    # "throwable":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void
.end method
